.class Lcom/sonyericsson/music/landingpage/LandingPageCategory$HandlePlaylistPlaybackAsyncTask;
.super Landroid/os/AsyncTask;
.source "LandingPageCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/landingpage/LandingPageCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HandlePlaylistPlaybackAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mMusicActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonyericsson/music/MusicActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistUri:Landroid/net/Uri;

.field private mSmartPlaylist:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/MusicActivity;Landroid/net/Uri;)V
    .locals 1

    .line 258
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 259
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory$HandlePlaylistPlaybackAsyncTask;->mMusicActivityRef:Ljava/lang/ref/WeakReference;

    .line 260
    iput-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory$HandlePlaylistPlaybackAsyncTask;->mPlaylistUri:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 261
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory$HandlePlaylistPlaybackAsyncTask;->mSmartPlaylist:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 11

    .line 266
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory$HandlePlaylistPlaybackAsyncTask;->mMusicActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/MusicActivity;

    const/4 v0, -0x1

    if-eqz p1, :cond_8

    .line 268
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory$HandlePlaylistPlaybackAsyncTask;->mPlaylistUri:Landroid/net/Uri;

    if-eqz v1, :cond_8

    .line 269
    invoke-static {v1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getSmartPlaylistType(Landroid/net/Uri;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory$HandlePlaylistPlaybackAsyncTask;->mSmartPlaylist:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    .line 270
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory$HandlePlaylistPlaybackAsyncTask;->mSmartPlaylist:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    .line 273
    sget-object v5, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->NEWLY_ADDED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    if-ne v1, v5, :cond_0

    .line 274
    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v1, v2

    .line 275
    invoke-static {v1, v0}, Lcom/sonyericsson/music/common/DBUtils;->getNewlyAddedDescProperty([Ljava/lang/String;I)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;

    move-result-object v1

    goto :goto_0

    .line 276
    :cond_0
    sget-object v5, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    if-ne v1, v5, :cond_1

    .line 278
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/music/common/DBUtils;->getFavouritesProperties(Landroid/content/ContentResolver;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;

    move-result-object v1

    goto :goto_0

    .line 281
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v3, v2

    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory$HandlePlaylistPlaybackAsyncTask;->mSmartPlaylist:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    .line 280
    invoke-static {v1, v3, v0, v2}, Lcom/sonyericsson/music/common/DBUtils;->getPlayedPlaylistDescProperty(Landroid/content/ContentResolver;[Ljava/lang/String;ILcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_8

    .line 287
    :try_start_0
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->hasLimit()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_2

    .line 288
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getTracksUri()Landroid/net/Uri;

    move-result-object v2

    .line 289
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getProjection()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getWhere()Ljava/lang/String;

    move-result-object v5

    .line 290
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getWhereArgs()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getOrderBy()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getLimit()I

    move-result v1

    .line 289
    invoke-static {v5, v6, v7, v1}, Lcom/sonyericsson/music/common/DBUtils;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    .line 288
    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    move-object v4, p1

    goto :goto_1

    .line 292
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getTracksUri()Landroid/net/Uri;

    move-result-object v6

    .line 293
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getProjection()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getWhere()Ljava/lang/String;

    move-result-object v8

    .line 294
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getWhereArgs()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getOrderBy()Ljava/lang/String;

    move-result-object v10

    .line 292
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    move-object v4, p1

    :goto_1
    if-eqz v4, :cond_3

    .line 297
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v4, :cond_8

    .line 301
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    if-eqz v4, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 303
    :cond_4
    throw p1

    .line 308
    :cond_5
    :try_start_1
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory$HandlePlaylistPlaybackAsyncTask;->mPlaylistUri:Landroid/net/Uri;

    invoke-static {p1, v1, v2}, Lcom/sonyericsson/music/common/DBUtils;->getMyPlaylistTracksCursor(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 311
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, p1

    :cond_6
    if-eqz v4, :cond_8

    .line 315
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception p1

    if-eqz v4, :cond_7

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 317
    :cond_7
    throw p1

    .line 320
    :cond_8
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 252
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategory$HandlePlaylistPlaybackAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4

    .line 325
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory$HandlePlaylistPlaybackAsyncTask;->mMusicActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    if-eqz v0, :cond_4

    .line 326
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p1, :cond_3

    .line 327
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 335
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_2

    .line 336
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory$HandlePlaylistPlaybackAsyncTask;->mSmartPlaylist:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 338
    sget-object v3, Lcom/sonyericsson/music/landingpage/LandingPageCategory$1;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v3, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, -0x1

    goto :goto_0

    .line 352
    :pswitch_0
    sget-object p1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    .line 353
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getMediaPlaybackConstant()I

    move-result p1

    goto :goto_0

    .line 348
    :pswitch_1
    sget-object p1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->NEWLY_ADDED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    .line 349
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getMediaPlaybackConstant()I

    move-result p1

    goto :goto_0

    .line 344
    :pswitch_2
    sget-object p1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    .line 345
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getMediaPlaybackConstant()I

    move-result p1

    goto :goto_0

    .line 340
    :pswitch_3
    sget-object p1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    .line 341
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getMediaPlaybackConstant()I

    move-result p1

    :goto_0
    if-eq p1, v2, :cond_4

    .line 361
    new-instance v2, Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    invoke-direct {v2}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;-><init>()V

    .line 362
    invoke-virtual {v2, v1}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->setTracksPosition(I)Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    move-result-object v2

    .line 363
    invoke-virtual {v2, v1}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->setShuffle(Z)Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    move-result-object v1

    .line 364
    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/music/MusicActivity;->openAndPlaySmartPlaylist(ILcom/sonyericsson/music/common/OpenAndPlayConditions;)V

    goto :goto_2

    .line 367
    :cond_1
    new-instance p1, Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    invoke-direct {p1}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;-><init>()V

    .line 368
    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->setTracksPosition(I)Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->setShuffle(Z)Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    move-result-object p1

    .line 369
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageCategory$HandlePlaylistPlaybackAsyncTask;->mPlaylistUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/music/MusicActivity;->openAndPlayContent(Landroid/net/Uri;Lcom/sonyericsson/music/common/OpenAndPlayConditions;)Z

    goto :goto_2

    :cond_2
    const p1, 0x7f1000c9

    const/4 v1, 0x1

    .line 372
    invoke-static {v0, p1, v1}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    goto :goto_2

    :cond_3
    :goto_1
    return-void

    :cond_4
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 252
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/LandingPageCategory$HandlePlaylistPlaybackAsyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
