.class public Lcom/airbnb/lottie/LottieComposition$Factory;
.super Ljava/lang/Object;
.source "LottieComposition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieComposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    return-void
.end method

.method public static fromAssetFileName(Landroid/content/Context;Ljava/lang/String;Lcom/airbnb/lottie/OnCompositionLoadedListener;)Lcom/airbnb/lottie/Cancellable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "l"    # Lcom/airbnb/lottie/OnCompositionLoadedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 230
    new-instance v0, Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;-><init>(Lcom/airbnb/lottie/OnCompositionLoadedListener;Lcom/airbnb/lottie/LottieComposition$1;)V

    .line 231
    .local v0, "listener":Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;
    invoke-static {p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    .line 232
    return-object v0
.end method

.method public static fromFileSync(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 282
    invoke-static {p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAssetSync(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieComposition;

    return-object v0
.end method

.method public static fromInputStream(Ljava/io/InputStream;Lcom/airbnb/lottie/OnCompositionLoadedListener;)Lcom/airbnb/lottie/Cancellable;
    .locals 2
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "l"    # Lcom/airbnb/lottie/OnCompositionLoadedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 250
    new-instance v0, Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;-><init>(Lcom/airbnb/lottie/OnCompositionLoadedListener;Lcom/airbnb/lottie/LottieComposition$1;)V

    .line 251
    .local v0, "listener":Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;
    invoke-static {p0, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStream(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    .line 252
    return-object v0
.end method

.method public static fromInputStreamSync(Ljava/io/InputStream;)Lcom/airbnb/lottie/LottieComposition;
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 292
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieComposition;

    return-object v0
.end method

.method public static fromInputStreamSync(Ljava/io/InputStream;Z)Lcom/airbnb/lottie/LottieComposition;
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "close"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 304
    if-eqz p1, :cond_0

    .line 305
    const-string v0, "Lottie now auto-closes input stream!"

    invoke-static {v0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 307
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieComposition;

    return-object v0
.end method

.method public static fromJsonReader(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/OnCompositionLoadedListener;)Lcom/airbnb/lottie/Cancellable;
    .locals 2
    .param p0, "reader"    # Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .param p1, "l"    # Lcom/airbnb/lottie/OnCompositionLoadedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 270
    new-instance v0, Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;-><init>(Lcom/airbnb/lottie/OnCompositionLoadedListener;Lcom/airbnb/lottie/LottieComposition$1;)V

    .line 271
    .local v0, "listener":Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;
    invoke-static {p0, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonReader(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    .line 272
    return-object v0
.end method

.method public static fromJsonString(Ljava/lang/String;Lcom/airbnb/lottie/OnCompositionLoadedListener;)Lcom/airbnb/lottie/Cancellable;
    .locals 2
    .param p0, "jsonString"    # Ljava/lang/String;
    .param p1, "l"    # Lcom/airbnb/lottie/OnCompositionLoadedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 260
    new-instance v0, Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;-><init>(Lcom/airbnb/lottie/OnCompositionLoadedListener;Lcom/airbnb/lottie/LottieComposition$1;)V

    .line 261
    .local v0, "listener":Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;
    invoke-static {p0, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonString(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    .line 262
    return-object v0
.end method

.method public static fromJsonSync(Landroid/content/res/Resources;Lorg/json/JSONObject;)Lcom/airbnb/lottie/LottieComposition;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 317
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonSync(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieComposition;

    return-object v0
.end method

.method public static fromJsonSync(Lcom/airbnb/lottie/parser/moshi/JsonReader;)Lcom/airbnb/lottie/LottieComposition;
    .locals 1
    .param p0, "reader"    # Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 337
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonReaderSync(Lcom/airbnb/lottie/parser/moshi/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieComposition;

    return-object v0
.end method

.method public static fromJsonSync(Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;
    .locals 1
    .param p0, "json"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 327
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonStringSync(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieComposition;

    return-object v0
.end method

.method public static fromRawFile(Landroid/content/Context;ILcom/airbnb/lottie/OnCompositionLoadedListener;)Lcom/airbnb/lottie/Cancellable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "l"    # Lcom/airbnb/lottie/OnCompositionLoadedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 240
    new-instance v0, Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;-><init>(Lcom/airbnb/lottie/OnCompositionLoadedListener;Lcom/airbnb/lottie/LottieComposition$1;)V

    .line 241
    .local v0, "listener":Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;
    invoke-static {p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawRes(Landroid/content/Context;I)Lcom/airbnb/lottie/LottieTask;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    .line 242
    return-object v0
.end method
