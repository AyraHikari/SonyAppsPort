.class public Lcom/airbnb/lottie/network/NetworkFetcher;
.super Ljava/lang/Object;
.source "NetworkFetcher.java"


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final networkCache:Lcom/airbnb/lottie/network/NetworkCache;

.field private final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->appContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    .line 37
    new-instance v1, Lcom/airbnb/lottie/network/NetworkCache;

    invoke-direct {v1, v0, p2}, Lcom/airbnb/lottie/network/NetworkCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    .line 38
    return-void
.end method

.method private fetchFromCache()Lcom/airbnb/lottie/LottieComposition;
    .locals 6

    .line 57
    iget-object v0, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    invoke-virtual {v0}, Lcom/airbnb/lottie/network/NetworkCache;->fetch()Landroidx/core/util/Pair;

    move-result-object v0

    .line 58
    .local v0, "cacheResult":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Lcom/airbnb/lottie/network/FileExtension;Ljava/io/InputStream;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 59
    return-object v1

    .line 62
    :cond_0
    iget-object v2, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/airbnb/lottie/network/FileExtension;

    .line 63
    .local v2, "extension":Lcom/airbnb/lottie/network/FileExtension;
    iget-object v3, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/io/InputStream;

    .line 65
    .local v3, "inputStream":Ljava/io/InputStream;
    sget-object v4, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    if-ne v2, v4, :cond_1

    .line 66
    new-instance v4, Ljava/util/zip/ZipInputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v5, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v4

    .local v4, "result":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<Lcom/airbnb/lottie/LottieComposition;>;"
    goto :goto_0

    .line 68
    .end local v4    # "result":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<Lcom/airbnb/lottie/LottieComposition;>;"
    :cond_1
    iget-object v4, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v4

    .line 70
    .restart local v4    # "result":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<Lcom/airbnb/lottie/LottieComposition;>;"
    :goto_0
    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 71
    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieComposition;

    return-object v1

    .line 73
    :cond_2
    return-object v1
.end method

.method private fetchFromNetwork()Lcom/airbnb/lottie/LottieResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 79
    :try_start_0
    invoke-direct {p0}, Lcom/airbnb/lottie/network/NetworkFetcher;->fetchFromNetworkInternal()Lcom/airbnb/lottie/LottieResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private fetchFromNetworkInternal()Lcom/airbnb/lottie/LottieResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fetching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    .line 90
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 91
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 94
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 96
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 101
    :cond_0
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/network/NetworkFetcher;->getResultFromConnection(Ljava/net/HttpURLConnection;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v1

    .line 102
    .local v1, "result":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<Lcom/airbnb/lottie/LottieComposition;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Completed fetch from network. Success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    nop

    .line 107
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 103
    return-object v1

    .line 97
    .end local v1    # "result":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<Lcom/airbnb/lottie/LottieComposition;>;"
    :cond_2
    :goto_1
    :try_start_1
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/network/NetworkFetcher;->getErrorFromConnection(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "error":Ljava/lang/String;
    new-instance v2, Lcom/airbnb/lottie/LottieResult;

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to fetch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 98
    return-object v2

    .line 107
    .end local v1    # "error":Ljava/lang/String;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {v2, v1}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 105
    return-object v2

    .line 107
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 108
    throw v1
.end method

.method public static fetchSync(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/airbnb/lottie/network/NetworkFetcher;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/lottie/network/NetworkFetcher;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/airbnb/lottie/network/NetworkFetcher;->fetchSync()Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    return-object v0
.end method

.method private getErrorFromConnection(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 6
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 113
    .local v0, "responseCode":I
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 114
    .local v1, "r":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v2, "error":Ljava/lang/StringBuilder;
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 119
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 125
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 128
    goto :goto_1

    .line 126
    :catch_0
    move-exception v3

    .line 129
    nop

    .line 130
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 124
    .end local v4    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 121
    :catch_1
    move-exception v3

    .line 122
    .local v3, "e":Ljava/lang/Exception;
    nop

    .end local v0    # "responseCode":I
    .end local v1    # "r":Ljava/io/BufferedReader;
    .end local v2    # "error":Ljava/lang/StringBuilder;
    .end local p0    # "this":Lcom/airbnb/lottie/network/NetworkFetcher;
    .end local p1    # "connection":Ljava/net/HttpURLConnection;
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "responseCode":I
    .restart local v1    # "r":Ljava/io/BufferedReader;
    .restart local v2    # "error":Ljava/lang/StringBuilder;
    .restart local p0    # "this":Lcom/airbnb/lottie/network/NetworkFetcher;
    .restart local p1    # "connection":Ljava/net/HttpURLConnection;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 128
    goto :goto_3

    .line 126
    :catch_2
    move-exception v4

    .line 129
    :goto_3
    throw v3
.end method

.method private getResultFromConnection(Ljava/net/HttpURLConnection;)Lcom/airbnb/lottie/LottieResult;
    .locals 7
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "result":Lcom/airbnb/lottie/LottieResult;, "Lcom/airbnb/lottie/LottieResult<Lcom/airbnb/lottie/LottieComposition;>;"
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "contentType":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 142
    const-string v1, "application/json"

    .line 144
    :cond_0
    const-string v2, "application/zip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    const-string v2, "Handling zip response."

    invoke-static {v2}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    .line 146
    sget-object v2, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    .line 147
    .local v2, "extension":Lcom/airbnb/lottie/network/FileExtension;
    iget-object v3, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/airbnb/lottie/network/NetworkCache;->writeTempCacheFile(Ljava/io/InputStream;Lcom/airbnb/lottie/network/FileExtension;)Ljava/io/File;

    move-result-object v3

    .line 148
    .local v3, "file":Ljava/io/File;
    new-instance v4, Ljava/util/zip/ZipInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v5, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    goto :goto_0

    .line 150
    .end local v2    # "extension":Lcom/airbnb/lottie/network/FileExtension;
    .end local v3    # "file":Ljava/io/File;
    :cond_1
    const-string v2, "Received json response."

    invoke-static {v2}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    .line 151
    sget-object v2, Lcom/airbnb/lottie/network/FileExtension;->JSON:Lcom/airbnb/lottie/network/FileExtension;

    .line 152
    .restart local v2    # "extension":Lcom/airbnb/lottie/network/FileExtension;
    iget-object v3, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/airbnb/lottie/network/NetworkCache;->writeTempCacheFile(Ljava/io/InputStream;Lcom/airbnb/lottie/network/FileExtension;)Ljava/io/File;

    move-result-object v3

    .line 153
    .restart local v3    # "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v5, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    .line 156
    :goto_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 157
    iget-object v4, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    invoke-virtual {v4, v2}, Lcom/airbnb/lottie/network/NetworkCache;->renameTempFile(Lcom/airbnb/lottie/network/FileExtension;)V

    .line 159
    :cond_2
    return-object v0
.end method


# virtual methods
.method public fetchSync()Lcom/airbnb/lottie/LottieResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/LottieResult<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lcom/airbnb/lottie/network/NetworkFetcher;->fetchFromCache()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v0

    .line 43
    .local v0, "result":Lcom/airbnb/lottie/LottieComposition;
    if-eqz v0, :cond_0

    .line 44
    new-instance v1, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 47
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animation for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/network/NetworkFetcher;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found in cache. Fetching from network."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Lcom/airbnb/lottie/network/NetworkFetcher;->fetchFromNetwork()Lcom/airbnb/lottie/LottieResult;

    move-result-object v1

    return-object v1
.end method
