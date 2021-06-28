.class public Lcom/sonyericsson/music/common/QuickPlayUtils$StartPlaybackTask;
.super Landroid/os/AsyncTask;
.source "QuickPlayUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/QuickPlayUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartPlaybackTask"
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
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonyericsson/music/MusicActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppContext:Landroid/content/Context;

.field private final mType:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/common/QuickPlayUtils$Type;)V
    .locals 1

    .line 193
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 194
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/music/common/QuickPlayUtils$StartPlaybackTask;->mActivity:Ljava/lang/ref/WeakReference;

    .line 195
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/common/QuickPlayUtils$StartPlaybackTask;->mAppContext:Landroid/content/Context;

    .line 196
    iput-object p2, p0, Lcom/sonyericsson/music/common/QuickPlayUtils$StartPlaybackTask;->mType:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 6

    .line 203
    iget-object p1, p0, Lcom/sonyericsson/music/common/QuickPlayUtils$StartPlaybackTask;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 204
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 207
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/common/QuickPlayUtils$StartPlaybackTask;->mAppContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 213
    sget-object v1, Lcom/sonyericsson/music/common/QuickPlayUtils$1;->$SwitchMap$com$sonyericsson$music$common$QuickPlayUtils$Type:[I

    iget-object v2, p0, Lcom/sonyericsson/music/common/QuickPlayUtils$StartPlaybackTask;->mType:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 266
    :pswitch_0
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-static {p1, v0, v4, v1}, Lcom/sonyericsson/music/common/DBUtils;->getPlayedPlaylistDescProperty(Landroid/content/ContentResolver;[Ljava/lang/String;ILcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 270
    invoke-static {p1, v0}, Lcom/sonyericsson/music/common/DBUtils;->getSmartPlaylistTracksCursor(Landroid/content/ContentResolver;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;)Landroid/database/Cursor;

    move-result-object v2

    goto/16 :goto_1

    .line 258
    :pswitch_1
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-static {p1, v0, v4, v1}, Lcom/sonyericsson/music/common/DBUtils;->getPlayedPlaylistDescProperty(Landroid/content/ContentResolver;[Ljava/lang/String;ILcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 262
    invoke-static {p1, v0}, Lcom/sonyericsson/music/common/DBUtils;->getSmartPlaylistTracksCursor(Landroid/content/ContentResolver;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_1

    .line 251
    :pswitch_2
    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v1, v4

    invoke-static {v1, v0}, Lcom/sonyericsson/music/common/DBUtils;->getNewlyAddedDescProperty([Ljava/lang/String;I)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 254
    invoke-static {p1, v0}, Lcom/sonyericsson/music/common/DBUtils;->getSmartPlaylistTracksCursor(Landroid/content/ContentResolver;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_1

    .line 245
    :pswitch_3
    invoke-static {p1}, Lcom/sonyericsson/music/common/DBUtils;->getFavouritesProperties(Landroid/content/ContentResolver;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 247
    invoke-static {p1, v0}, Lcom/sonyericsson/music/common/DBUtils;->getSmartPlaylistTracksCursor(Landroid/content/ContentResolver;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_1

    .line 219
    :pswitch_4
    iget-object v1, p0, Lcom/sonyericsson/music/common/QuickPlayUtils$StartPlaybackTask;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->getQuickPlayPlaylistUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 223
    invoke-static {v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 224
    invoke-static {p1, v1}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->convertMediastoreUriId(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 226
    invoke-static {v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(I)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 229
    :cond_1
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    move-object v1, v0

    .line 231
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/common/QuickPlayUtils$StartPlaybackTask;->mAppContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setQuickPlayPlaylistUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 235
    :cond_2
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 236
    invoke-static {v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v0

    .line 237
    invoke-static {v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;->getContentUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 239
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    invoke-static {p1, v1, v0}, Lcom/sonyericsson/music/common/DBUtils;->getMyPlaylistTracksCursor(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_1

    .line 215
    :pswitch_5
    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v1, v4

    invoke-static {p1, v1, v0, v2}, Lcom/sonyericsson/music/common/DBUtils;->getAllTracksCursor(Landroid/content/ContentResolver;[Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 281
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 284
    throw p1

    .line 287
    :cond_4
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 187
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/common/QuickPlayUtils$StartPlaybackTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 8

    .line 292
    iget-object v0, p0, Lcom/sonyericsson/music/common/QuickPlayUtils$StartPlaybackTask;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 299
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_3

    .line 306
    new-instance p1, Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    invoke-direct {p1}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;-><init>()V

    invoke-virtual {p1, v2}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->setTracksPosition(I)Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    move-result-object p1

    const/4 v1, 0x1

    .line 307
    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/common/OpenAndPlayConditions;->setShuffle(Z)Lcom/sonyericsson/music/common/OpenAndPlayConditions;

    move-result-object p1

    .line 312
    sget-object v1, Lcom/sonyericsson/music/common/QuickPlayUtils$1;->$SwitchMap$com$sonyericsson$music$common$QuickPlayUtils$Type:[I

    iget-object v3, p0, Lcom/sonyericsson/music/common/QuickPlayUtils$StartPlaybackTask;->mType:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, -0x1

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    const/4 v4, -0x1

    goto :goto_0

    .line 337
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/music/common/QuickPlayUtils$StartPlaybackTask;->mType:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->getSharedPrefsValue()Ljava/lang/String;

    move-result-object v1

    .line 338
    iget-object v4, p0, Lcom/sonyericsson/music/common/QuickPlayUtils$StartPlaybackTask;->mType:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    invoke-virtual {v4}, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->getPlayToastResId()I

    move-result v4

    .line 339
    iget-object v5, p0, Lcom/sonyericsson/music/common/QuickPlayUtils$StartPlaybackTask;->mType:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    invoke-virtual {v5}, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->getSmartPlaylistId()I

    move-result v5

    invoke-virtual {v0, v5, p1}, Lcom/sonyericsson/music/MusicActivity;->openAndPlaySmartPlaylist(ILcom/sonyericsson/music/common/OpenAndPlayConditions;)V

    goto :goto_0

    .line 320
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/music/common/QuickPlayUtils$StartPlaybackTask;->mType:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->getSharedPrefsValue()Ljava/lang/String;

    move-result-object v1

    .line 321
    iget-object v4, p0, Lcom/sonyericsson/music/common/QuickPlayUtils$StartPlaybackTask;->mAppContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->getQuickPlayPlaylistUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 324
    iget-object v5, p0, Lcom/sonyericsson/music/common/QuickPlayUtils$StartPlaybackTask;->mType:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    invoke-virtual {v5}, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->getPlayToastResId()I

    move-result v5

    const-string v6, "members"

    .line 325
    invoke-static {v4, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 326
    invoke-virtual {v0, v4, p1}, Lcom/sonyericsson/music/MusicActivity;->openAndPlayContent(Landroid/net/Uri;Lcom/sonyericsson/music/common/OpenAndPlayConditions;)Z

    move v4, v5

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    goto :goto_0

    .line 314
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/music/common/QuickPlayUtils$StartPlaybackTask;->mType:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->getSharedPrefsValue()Ljava/lang/String;

    move-result-object v1

    .line 315
    iget-object v4, p0, Lcom/sonyericsson/music/common/QuickPlayUtils$StartPlaybackTask;->mType:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    invoke-virtual {v4}, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->getPlayToastResId()I

    move-result v4

    .line 316
    iget-object v5, p0, Lcom/sonyericsson/music/common/QuickPlayUtils$StartPlaybackTask;->mType:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    invoke-virtual {v5}, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->getSmartPlaylistId()I

    move-result v5

    invoke-virtual {v0, v5, p1}, Lcom/sonyericsson/music/MusicActivity;->openAndPlaySmartPlaylist(ILcom/sonyericsson/music/common/OpenAndPlayConditions;)V

    :goto_0
    if-eqz v1, :cond_2

    const-string p1, "quick_play"

    .line 351
    invoke-static {v0, p1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->logEvent(Landroid/content/Context;Ljava/lang/String;)Z

    const-string p1, "quick_play"

    const-string v5, "play"

    const-wide/16 v6, 0x0

    .line 357
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 353
    invoke-static {v0, p1, v5, v1, v6}, Lcom/sonymobile/music/common/GoogleAnalyticsProxy;->sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    if-eq v4, v3, :cond_4

    .line 360
    invoke-virtual {v0, v4, v2}, Lcom/sonyericsson/music/MusicActivity;->showToastOnUiThread(II)V

    goto :goto_1

    .line 362
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_4

    .line 363
    iget-object p1, p0, Lcom/sonyericsson/music/common/QuickPlayUtils$StartPlaybackTask;->mType:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->getEmptyToastResId()I

    move-result p1

    invoke-virtual {v0, p1, v2}, Lcom/sonyericsson/music/MusicActivity;->showToastOnUiThread(II)V

    :cond_4
    :goto_1
    return-void

    :catch_0
    return-void

    :cond_5
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 187
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/common/QuickPlayUtils$StartPlaybackTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
