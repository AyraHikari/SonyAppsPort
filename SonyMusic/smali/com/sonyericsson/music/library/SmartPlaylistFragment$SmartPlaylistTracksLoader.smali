.class Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistTracksLoader;
.super Landroidx/loader/content/CursorLoader;
.source "SmartPlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/SmartPlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SmartPlaylistTracksLoader"
.end annotation


# instance fields
.field private mObserver:Landroidx/loader/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field private mRegisteredObserver:Z

.field private final mType:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)V
    .locals 0

    .line 478
    invoke-direct {p0, p1}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 474
    new-instance p1, Landroidx/loader/content/Loader$ForceLoadContentObserver;

    invoke-direct {p1, p0}, Landroidx/loader/content/Loader$ForceLoadContentObserver;-><init>(Landroidx/loader/content/Loader;)V

    iput-object p1, p0, Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistTracksLoader;->mObserver:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    .line 480
    iput-object p2, p0, Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistTracksLoader;->mType:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    return-void
.end method


# virtual methods
.method public onLoadInBackground()Landroid/database/Cursor;
    .locals 4

    .line 497
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 500
    invoke-static {v0}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 501
    iget-object v1, p0, Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistTracksLoader;->mType:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-static {v0, v1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->getSmartPlaylistProperties(Landroid/content/Context;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 505
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getTracksUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/loader/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 506
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getWhere()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/loader/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 507
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getWhereArgs()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/loader/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 508
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getProjection()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/loader/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 509
    sget-boolean v1, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistTracksLoader;->mType:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    sget-object v3, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->NEWLY_ADDED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    if-ne v1, v3, :cond_1

    .line 510
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->hasLimit()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getOrderBy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " LIMIT "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getLimit()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/loader/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    goto :goto_1

    .line 513
    :cond_1
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getOrderBy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/loader/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 515
    :goto_1
    invoke-super {p0}, Landroidx/loader/content/AsyncTaskLoader;->onLoadInBackground()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 518
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->MEDIA_STORE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;

    sget-object v3, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->TRACK:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/music/common/HDAudioUtils;->getHDContent(Landroid/content/Context;Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;)Ljava/util/HashSet;

    move-result-object v1

    .line 522
    new-instance v2, Lcom/sonyericsson/music/common/HighResAttachedCursor;

    invoke-direct {v2, v0, v1}, Lcom/sonyericsson/music/common/HighResAttachedCursor;-><init>(Landroid/database/Cursor;Ljava/util/HashSet;)V

    return-object v2

    :cond_2
    return-object v2
.end method

.method public bridge synthetic onLoadInBackground()Ljava/lang/Object;
    .locals 1

    .line 470
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistTracksLoader;->onLoadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 2

    .line 531
    invoke-super {p0}, Landroidx/loader/content/CursorLoader;->onReset()V

    .line 533
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistTracksLoader;->mRegisteredObserver:Z

    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistTracksLoader;->mObserver:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 535
    iput-boolean v0, p0, Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistTracksLoader;->mRegisteredObserver:Z

    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 4

    .line 485
    invoke-super {p0}, Landroidx/loader/content/CursorLoader;->onStartLoading()V

    .line 487
    iget-boolean v0, p0, Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistTracksLoader;->mRegisteredObserver:Z

    if-nez v0, :cond_0

    .line 488
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 489
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistTracksLoader;->mObserver:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    const/4 v3, 0x1

    .line 488
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 491
    iput-boolean v3, p0, Lcom/sonyericsson/music/library/SmartPlaylistFragment$SmartPlaylistTracksLoader;->mRegisteredObserver:Z

    :cond_0
    return-void
.end method
