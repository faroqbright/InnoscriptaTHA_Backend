<?php

namespace App\Http\Controllers\API\User;

use App\Http\Controllers\Controller;
use App\Models\Article;
use App\Models\Author;
use App\Models\Source;
use Illuminate\Http\Request;

class ArticleController extends Controller
{
    private  $newsAPIKey = '59a01ea7e2a04a2c95a1ffb0e1876246';
    private $newYorkAPIKey = 'RGSikx9UH7tGHxtskW3OGWdbv9rRUGAM';
    public function search()
    {
        $search = request()->input('search')??'a';
        $date = request()->input('date');
        $category = request()->input('category');
        $page = request()->input('page');
        $pageSize = request()->input('pageSize');
        if($date)
        {
            $date = date('Y-m-d',strtotime($date));
        }
        try{
            $client = new \GuzzleHttp\Client();
            $request = $client->get('https://newsapi.org/v2/everything?q='.$search.'&from='.$date.'&apiKey='.$this->newsAPIKey.'&page='.$page.'&pageSize='.$pageSize.'&category='.$category);
            $articles = json_decode($request->getBody()->getContents());
        }
        catch(\Exception $e)
        {
            return response()->json(['status'=>500,'message'=>'Something went wrong'],500);
        }

        return response()->json(['status'=>200,'data'=>$articles],200);
    }

    public function getAllSources()
    {
        try{
            $client = new \GuzzleHttp\Client();
            $request = $client->get('https://newsapi.org/v2/sources?apiKey='.$this->newsAPIKey.'&apiKey='.$this->newsAPIKey);
            $sources = json_decode($request->getBody()->getContents());
        }
        catch(\Exception $e)
        {
            return response()->json(['status'=>500,'message'=>'Something went wrong'],500);
        }

        return response()->json(['status'=>200,'data'=>$sources],200);
    }

    public function searchBySource()
    {
        $source = request()->input('sources');
        $page = request()->input('page');
        $pageSize = request()->input('pageSize');
        try{
            $client = new \GuzzleHttp\Client();
            $request = $client->get('https://newsapi.org/v2/top-headlines?sources='.$source.'&apiKey='.$this->newsAPIKey.'&page='.$page.'&pageSize='.$pageSize);
            $sources = json_decode($request->getBody()->getContents());
        }
        catch(\Exception $e)
        {
            return response()->json(['status'=>500,'message'=>'Something went wrong'],500);
        }

        return response()->json(['status'=>200,'data'=>$sources],200);
    }

    public  function searchByCategory()
    {
        
        $country = request()->input('country');
        $category = request()->input('category');
        $page = request()->input('page');
        $pageSize = request()->input('pageSize');
        $source_platform = request()->input('source_platform');
        if($source_platform == 'newsapi.org')
        {
            // return request()->all();
            try{
                $client = new \GuzzleHttp\Client();
                $request = $client->get('https://newsapi.org/v2/top-headlines?country='.$country.'&category='.$category.'&apiKey='.$this->newsAPIKey.'&page='.$page.'&pageSize='.$pageSize);
                $sources = json_decode($request->getBody()->getContents());
                $loopCount = (int)($sources->totalResults/$pageSize);

                for($i = 1; $i <= $loopCount; $i++)
                {
                    $client1 = new \GuzzleHttp\Client();
                    $request1 = $client1->get('https://newsapi.org/v2/top-headlines?country='.$country.'&category='.$category.'&apiKey='.$this->newsAPIKey.'&page='.$i.'&pageSize='.$pageSize);
                    $sources1 = json_decode($request1->getBody()->getContents());
                    foreach($sources1->articles as $article)
                    {
                        if(!empty($article->source->name))
                        {
                            $sourceModel = Source::where('name',$article->source->name)->first();
                            if(!$sourceModel)
                            {
                                $sourceModel = new Source();
                                $sourceModel->name = $article->source->name;
                                $sourceModel->save();
                                $data['source_id'] = $sourceModel->id;
                            }
                        }
                        if(!empty($article->author))
                        {
                            $authorModal = Author::where('name',$article->author)->first();
                            if(!$authorModal)
                            {
                                $authorModal = new Author();
                                $authorModal->name = $article->author;
                                $authorModal->save();
                                $data['author_id'] = $authorModal->id;
                            }
                        }
                        $articleData = Article::where('title',$article->title)->first();
                        if(!$articleData)
                        {
                            $data['title'] = $article->title;
                            $data['description'] = $article->description;
                            $data['content'] = $article->content;
                            $data['url'] = $article->url;
                            $data['url_image'] = $article->urlToImage;
                            $data['published_at'] = $article->publishedAt;
                            $data['source_platform'] = $source_platform;
                            $data['country'] = $country;
                            $data['category'] = request()->input('category');
                            Article::create($data);
                        }

                    }
                }

            }
            catch(\Exception $e)
            {
                return response()->json(['status'=>500,'message'=>'Something went wrong'],500);
            }
        }
        else if($source_platform == 'guardian')
        {
            try{
                $client = new \GuzzleHttp\Client();
                $request = $client->get('https://content.guardianapis.com/search?api-key=test&page='.$page.'&page-size='.$pageSize);
                $sources = json_decode($request->getBody()->getContents());
                $loopCount = (int)($sources->response->pages/$pageSize);
                for($i = 1; $i <= $loopCount; $i++)
                {
                    $client1 = new \GuzzleHttp\Client();
                    $request1 = $client1->get('https://content.guardianapis.com/search?api-key=test&page='.$i.'&page-size='.$pageSize);
                    $sources1 = json_decode($request1->getBody()->getContents());
                    foreach($sources1->response->results as $article)
                    {
                        $articleData = Article::where('title',$article->webTitle)->first();
                        if(!$articleData)
                        {
                            $data['title'] = $article->webTitle;
                            $data['category'] = $article->sectionId;
                            $data['published_at'] = $article->webPublicationDate;
                            $data['source_platform'] = $source_platform;
                            Article::create($data);
                        }

                    }
                }
            }
            catch(\Exception $e)
            {
                return response()->json(['status'=>500,'message'=>'Something went wrong'],500);
            }
        }

        return response()->json(['status'=>200,'data'=>$sources],200);
    }

    public function getArticles()
    {
        $query = new Article();
        if(request()->input('country'))
        {
            $query = $query->where('country',request()->input('country'));
        }
        if(request()->input('category'))
        {
            $query = $query->where('category',request()->input('category'));
        }
        if(request()->input('source_platform'))
        {
            $query = $query->where('source_platform',request()->input('source_platform'));
        }
        if(request()->input('date'))
        {
            $date = date('Y-m-d',strtotime(request()->input('date')));
            $query = $query->whereDate('published_at',$date);
        }

        $articles = $query->with('source','author')
            ->paginate(10)->appends(request()->query());

        return response()->json(['status'=>200,'data'=>$articles],200);
    }
}
