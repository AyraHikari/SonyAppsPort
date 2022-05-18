.class public Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;
.super Landroid/os/AsyncTask;
.source "PlaylistAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/playlist/PlaylistAsyncTask$OnPlaylistTaskCompleted;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mAppContext:Landroid/content/Context;

.field private mOperationSuccessful:Z

.field private mPlaylistOperation:Lcom/sonyericsson/music/playlist/PlaylistOperation;

.field private mPlaylistTaskListener:Lcom/sonyericsson/music/playlist/PlaylistAsyncTask$OnPlaylistTaskCompleted;

.field private mTaskResult:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;-><init>(Landroid/app/Activity;Lcom/sonyericsson/music/playlist/PlaylistAsyncTask$OnPlaylistTaskCompleted;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/music/playlist/PlaylistAsyncTask$OnPlaylistTaskCompleted;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mPlaylistOperation:Lcom/sonyericsson/music/playlist/PlaylistOperation;

    .line 53
    iput-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mAppContext:Landroid/content/Context;

    .line 55
    iput-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mActivity:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mOperationSuccessful:Z

    if-eqz p1, :cond_0

    .line 72
    iput-object p2, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mPlaylistTaskListener:Lcom/sonyericsson/music/playlist/PlaylistAsyncTask$OnPlaylistTaskCompleted;

    .line 73
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mAppContext:Landroid/content/Context;

    .line 74
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mActivity:Ljava/lang/ref/WeakReference;

    .line 75
    new-instance p2, Lcom/sonyericsson/music/playlist/PlaylistOperation;

    invoke-direct {p2, p1}, Lcom/sonyericsson/music/playlist/PlaylistOperation;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mPlaylistOperation:Lcom/sonyericsson/music/playlist/PlaylistOperation;

    return-void

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Activity context is not allowed to be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addAlbumToPlaylistInBackground(Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddAlbum;)V
    .locals 5

    .line 137
    invoke-virtual {p1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddAlbum;->getAlbumId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 140
    iget-object v2, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mPlaylistOperation:Lcom/sonyericsson/music/playlist/PlaylistOperation;

    invoke-virtual {p1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddAlbum;->getPlaylistId()I

    move-result v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->addAlbumToPlaylist(IJ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mOperationSuccessful:Z

    .line 142
    iget-boolean v2, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mOperationSuccessful:Z

    if-eqz v2, :cond_0

    .line 144
    invoke-virtual {p1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddAlbum;->getPlaylistId()I

    move-result v2

    .line 145
    iget-object v3, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 147
    invoke-static {v3, v2}, Lcom/sonyericsson/music/common/DBUtils;->getPlaylistName(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-virtual {p1, v2}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddAlbum;->setPlaylistName(Ljava/lang/String;)V

    .line 150
    invoke-static {v3, v0, v1}, Lcom/sonyericsson/music/common/DBUtils;->getAlbumName(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddAlbum;->setAlbumName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private addFolderToPlaylistInBackground(Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddFolder;)V
    .locals 6

    .line 212
    invoke-virtual {p1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddFolder;->getFolderId()J

    move-result-wide v0

    .line 213
    invoke-virtual {p1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddFolder;->getPlaylistId()I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    .line 215
    sget-boolean v3, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-nez v3, :cond_0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-lez v5, :cond_1

    .line 217
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mPlaylistOperation:Lcom/sonyericsson/music/playlist/PlaylistOperation;

    invoke-virtual {v3, v2, v0, v1}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->addFolderToPlaylist(IJ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mOperationSuccessful:Z

    .line 219
    iget-boolean v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mOperationSuccessful:Z

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 222
    invoke-static {v0, v2}, Lcom/sonyericsson/music/common/DBUtils;->getPlaylistName(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddFolder;->setPlaylistName(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private addGenreToPlaylistInBackground(Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddGenre;)V
    .locals 6

    .line 229
    invoke-virtual {p1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddGenre;->getGenreId()J

    move-result-wide v0

    .line 230
    invoke-virtual {p1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddGenre;->getPlaylistId()I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    .line 233
    iget-object v3, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mPlaylistOperation:Lcom/sonyericsson/music/playlist/PlaylistOperation;

    invoke-virtual {v3, v2, v0, v1}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->addGenreToPlaylist(IJ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mOperationSuccessful:Z

    .line 235
    iget-boolean v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mOperationSuccessful:Z

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 238
    invoke-static {v0, v2}, Lcom/sonyericsson/music/common/DBUtils;->getPlaylistName(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddGenre;->setPlaylistName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private addTracksToPlaylistInBackground(Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;)V
    .locals 5

    .line 167
    invoke-virtual {p1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;->getItemsToAdd()Ljava/util/List;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v0, :cond_2

    .line 171
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 173
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 174
    invoke-virtual {p1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;->getPlaylistId()I

    move-result v0

    .line 175
    invoke-virtual {p1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;->getItemsToAdd()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 176
    iget-object v4, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mPlaylistOperation:Lcom/sonyericsson/music/playlist/PlaylistOperation;

    long-to-int v3, v2

    invoke-virtual {v4, v0, v3}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->addTrackToPlaylist(II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mOperationSuccessful:Z

    .line 178
    iget-boolean v2, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mOperationSuccessful:Z

    if-eqz v2, :cond_1

    .line 180
    invoke-static {v1, v3}, Lcom/sonyericsson/music/common/DBUtils;->getTrackName(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-virtual {p1, v2}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;->setTrackName(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;->getPlaylistId()I

    move-result v0

    .line 185
    invoke-virtual {p1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;->getItemsToAdd()Ljava/util/List;

    move-result-object v2

    .line 187
    iget-object v3, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mPlaylistOperation:Lcom/sonyericsson/music/playlist/PlaylistOperation;

    invoke-virtual {v3, v0, v2}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->addTracksToPlaylist(ILjava/util/List;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mOperationSuccessful:Z

    .line 191
    :cond_1
    :goto_0
    invoke-static {v1, v0}, Lcom/sonyericsson/music/common/DBUtils;->getPlaylistName(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;->setPlaylistName(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private createPlaylist(Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;)V
    .locals 4

    .line 267
    invoke-virtual {p1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;->getOrigPlaylistName()Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-virtual {p1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;->getItemsToAdd()Ljava/util/List;

    move-result-object v1

    .line 270
    iget-object v2, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mPlaylistOperation:Lcom/sonyericsson/music/playlist/PlaylistOperation;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->getUniquePlaylistName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;->setResultPlaylistName(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 273
    iget-object v2, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mPlaylistOperation:Lcom/sonyericsson/music/playlist/PlaylistOperation;

    .line 274
    invoke-virtual {v2, v0, v1}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->createPlaylistWithUniqueNameWithResult(Ljava/lang/String;Ljava/util/List;)Landroid/util/Pair;

    move-result-object v0

    .line 275
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 277
    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;->setResultPlaylistId(J)V

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 280
    iput-boolean p1, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mOperationSuccessful:Z

    :cond_0
    return-void
.end method

.method private moveTrack(Lcom/sonyericsson/music/playlist/PlaylistAsyncDataMoveTrack;)V
    .locals 4

    .line 324
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mPlaylistOperation:Lcom/sonyericsson/music/playlist/PlaylistOperation;

    invoke-virtual {p1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataMoveTrack;->getPlaylistId()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataMoveTrack;->getFromIndex()I

    move-result v3

    .line 325
    invoke-virtual {p1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataMoveTrack;->getToIndex()I

    move-result p1

    .line 324
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->moveTrackInPlaylist(JII)Z

    return-void
.end method

.method private postAddAlbumToPlaylist(Landroid/content/Context;Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddAlbum;)V
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mOperationSuccessful:Z

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p2}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddAlbum;->getPlaylistName()Ljava/lang/String;

    move-result-object p2

    .line 161
    sget-object v0, Lcom/sonyericsson/music/playlist/PlaylistOperation$ObjectType;->ALBUM:Lcom/sonyericsson/music/playlist/PlaylistOperation$ObjectType;

    invoke-static {p1, p2, v0}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->showAddedToast(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/music/playlist/PlaylistOperation$ObjectType;)V

    :cond_0
    return-void
.end method

.method private postAddFolderToPlaylist(Landroid/content/Context;Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddFolder;)V
    .locals 1

    .line 245
    iget-boolean v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mOperationSuccessful:Z

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p2}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddFolder;->getPlaylistName()Ljava/lang/String;

    move-result-object p2

    .line 248
    sget-object v0, Lcom/sonyericsson/music/playlist/PlaylistOperation$ObjectType;->FOLDER:Lcom/sonyericsson/music/playlist/PlaylistOperation$ObjectType;

    invoke-static {p1, p2, v0}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->showAddedToast(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/music/playlist/PlaylistOperation$ObjectType;)V

    :cond_0
    return-void
.end method

.method private postAddGenreToPlaylist(Landroid/content/Context;Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddGenre;)V
    .locals 1

    .line 254
    iget-boolean v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mOperationSuccessful:Z

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p2}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddGenre;->getPlaylistName()Ljava/lang/String;

    move-result-object p2

    .line 257
    sget-object v0, Lcom/sonyericsson/music/playlist/PlaylistOperation$ObjectType;->GENRE:Lcom/sonyericsson/music/playlist/PlaylistOperation$ObjectType;

    invoke-static {p1, p2, v0}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->showAddedToast(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/music/playlist/PlaylistOperation$ObjectType;)V

    :cond_0
    return-void
.end method

.method private postAddTracksToPlaylist(Landroid/content/Context;Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;)V
    .locals 2

    .line 197
    invoke-virtual {p2}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;->getItemsToAdd()Ljava/util/List;

    move-result-object v0

    .line 201
    iget-boolean v1, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mOperationSuccessful:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 202
    invoke-virtual {p2}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;->getPlaylistName()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-virtual {p2}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;->showAddedToast()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 205
    sget-object p2, Lcom/sonyericsson/music/playlist/PlaylistOperation$ObjectType;->TRACK:Lcom/sonyericsson/music/playlist/PlaylistOperation$ObjectType;

    invoke-static {p1, v0, p2}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->showAddedToast(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/music/playlist/PlaylistOperation$ObjectType;)V

    :cond_0
    return-void
.end method

.method private postCreatePlaylist(Landroid/content/Context;Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;)V
    .locals 6

    .line 286
    iget-boolean v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mOperationSuccessful:Z

    if-eqz v0, :cond_4

    .line 287
    invoke-virtual {p2}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;->getResultPlaylistName()Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-virtual {p2}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;->getAdditionalMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 292
    invoke-virtual {p2}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;->getOrigPlaylistName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    if-eqz v1, :cond_0

    .line 295
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v4, 0x7f1001c6

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-virtual {p2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 298
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v4, 0x7f1001c5

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-virtual {p2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 303
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1001c4

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 306
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1001c3

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    .line 310
    :goto_1
    invoke-static {p1, p2, v2}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_4
    return-void
.end method

.method private removeTracksFromPlaylist(Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRemoveFromPlaylist;)V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mPlaylistOperation:Lcom/sonyericsson/music/playlist/PlaylistOperation;

    invoke-virtual {p1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRemoveFromPlaylist;->getPlaylistId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRemoveFromPlaylist;->getItemsToRemove()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->removeFromPlaylist(ILjava/util/Collection;)I

    return-void
.end method

.method private renamePlaylist(Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRenamePlaylist;)V
    .locals 2

    .line 316
    invoke-virtual {p1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRenamePlaylist;->getPlaylistUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/DBUtils;->isMusicInfoStoreUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mPlaylistOperation:Lcom/sonyericsson/music/playlist/PlaylistOperation;

    .line 318
    invoke-virtual {p1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRenamePlaylist;->getPlaylistUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v1

    .line 319
    invoke-virtual {p1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRenamePlaylist;->getName()Ljava/lang/String;

    move-result-object p1

    .line 317
    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->renameLocalPlaylist(ILjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/music/common/PermissionUtils;->isWriteStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    array-length v0, p1

    if-lez v0, :cond_8

    const/4 v0, 0x0

    .line 83
    aget-object v1, p1, v0

    instance-of v1, v1, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddAlbum;

    if-eqz v1, :cond_0

    .line 84
    aget-object v1, p1, v0

    check-cast v1, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddAlbum;

    invoke-direct {p0, v1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->addAlbumToPlaylistInBackground(Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddAlbum;)V

    goto :goto_0

    .line 85
    :cond_0
    aget-object v1, p1, v0

    instance-of v1, v1, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;

    if-eqz v1, :cond_1

    .line 86
    aget-object v1, p1, v0

    check-cast v1, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;

    invoke-direct {p0, v1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->addTracksToPlaylistInBackground(Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;)V

    goto :goto_0

    .line 87
    :cond_1
    aget-object v1, p1, v0

    instance-of v1, v1, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRemoveFromPlaylist;

    if-eqz v1, :cond_2

    .line 88
    aget-object v1, p1, v0

    check-cast v1, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRemoveFromPlaylist;

    invoke-direct {p0, v1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->removeTracksFromPlaylist(Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRemoveFromPlaylist;)V

    goto :goto_0

    .line 89
    :cond_2
    aget-object v1, p1, v0

    instance-of v1, v1, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;

    if-eqz v1, :cond_3

    .line 90
    aget-object v1, p1, v0

    check-cast v1, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;

    invoke-direct {p0, v1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->createPlaylist(Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;)V

    goto :goto_0

    .line 91
    :cond_3
    aget-object v1, p1, v0

    instance-of v1, v1, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRenamePlaylist;

    if-eqz v1, :cond_4

    .line 92
    aget-object v1, p1, v0

    check-cast v1, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRenamePlaylist;

    invoke-direct {p0, v1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->renamePlaylist(Lcom/sonyericsson/music/playlist/PlaylistAsyncDataRenamePlaylist;)V

    goto :goto_0

    .line 93
    :cond_4
    aget-object v1, p1, v0

    instance-of v1, v1, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataMoveTrack;

    if-eqz v1, :cond_5

    .line 94
    aget-object v1, p1, v0

    check-cast v1, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataMoveTrack;

    invoke-direct {p0, v1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->moveTrack(Lcom/sonyericsson/music/playlist/PlaylistAsyncDataMoveTrack;)V

    goto :goto_0

    .line 95
    :cond_5
    aget-object v1, p1, v0

    instance-of v1, v1, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddFolder;

    if-eqz v1, :cond_6

    .line 96
    aget-object v1, p1, v0

    check-cast v1, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddFolder;

    invoke-direct {p0, v1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->addFolderToPlaylistInBackground(Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddFolder;)V

    goto :goto_0

    .line 97
    :cond_6
    aget-object v1, p1, v0

    instance-of v1, v1, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddGenre;

    if-eqz v1, :cond_7

    .line 98
    aget-object v1, p1, v0

    check-cast v1, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddGenre;

    invoke-direct {p0, v1}, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->addGenreToPlaylistInBackground(Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddGenre;)V

    .line 100
    :cond_7
    :goto_0
    aget-object p1, p1, v0

    return-object p1

    :cond_8
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mTaskResult:Ljava/lang/Object;

    .line 110
    invoke-virtual {p0}, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->processResult()V

    return-void
.end method

.method public processResult()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mTaskResult:Ljava/lang/Object;

    .line 116
    iget-object v1, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 117
    iget-object v2, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mPlaylistOperation:Lcom/sonyericsson/music/playlist/PlaylistOperation;

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    .line 118
    instance-of v2, v0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddAlbum;

    if-eqz v2, :cond_0

    .line 119
    move-object v2, v0

    check-cast v2, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddAlbum;

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->postAddAlbumToPlaylist(Landroid/content/Context;Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddAlbum;)V

    goto :goto_0

    .line 120
    :cond_0
    instance-of v2, v0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;

    if-eqz v2, :cond_1

    .line 121
    move-object v2, v0

    check-cast v2, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->postAddTracksToPlaylist(Landroid/content/Context;Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddTracks;)V

    goto :goto_0

    .line 122
    :cond_1
    instance-of v2, v0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;

    if-eqz v2, :cond_2

    .line 123
    move-object v2, v0

    check-cast v2, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->postCreatePlaylist(Landroid/content/Context;Lcom/sonyericsson/music/playlist/PlaylistAsyncDataCreatePlaylist;)V

    goto :goto_0

    .line 124
    :cond_2
    instance-of v2, v0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddFolder;

    if-eqz v2, :cond_3

    .line 125
    move-object v2, v0

    check-cast v2, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddFolder;

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->postAddFolderToPlaylist(Landroid/content/Context;Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddFolder;)V

    goto :goto_0

    .line 126
    :cond_3
    instance-of v2, v0, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddGenre;

    if-eqz v2, :cond_4

    .line 127
    move-object v2, v0

    check-cast v2, Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddGenre;

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->postAddGenreToPlaylist(Landroid/content/Context;Lcom/sonyericsson/music/playlist/PlaylistAsyncDataAddGenre;)V

    .line 131
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;->mPlaylistTaskListener:Lcom/sonyericsson/music/playlist/PlaylistAsyncTask$OnPlaylistTaskCompleted;

    if-eqz v1, :cond_5

    .line 132
    invoke-interface {v1, v0}, Lcom/sonyericsson/music/playlist/PlaylistAsyncTask$OnPlaylistTaskCompleted;->onTaskCompleted(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method
