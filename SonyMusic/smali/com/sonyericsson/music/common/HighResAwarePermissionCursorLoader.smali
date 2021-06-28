.class public Lcom/sonyericsson/music/common/HighResAwarePermissionCursorLoader;
.super Lcom/sonyericsson/music/common/PermissionCursorLoader;
.source "HighResAwarePermissionCursorLoader.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHighResType:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

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


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;)V
    .locals 0

    .line 37
    invoke-direct/range {p0 .. p7}, Lcom/sonyericsson/music/common/PermissionCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/common/HighResAwarePermissionCursorLoader;->mContext:Landroid/content/Context;

    .line 40
    iput-object p8, p0, Lcom/sonyericsson/music/common/HighResAwarePermissionCursorLoader;->mHighResType:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    .line 41
    new-instance p1, Landroidx/loader/content/Loader$ForceLoadContentObserver;

    invoke-direct {p1, p0}, Landroidx/loader/content/Loader$ForceLoadContentObserver;-><init>(Landroidx/loader/content/Loader;)V

    iput-object p1, p0, Lcom/sonyericsson/music/common/HighResAwarePermissionCursorLoader;->mObserver:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 4

    .line 58
    invoke-super {p0}, Lcom/sonyericsson/music/common/PermissionCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 63
    iget-object v2, p0, Lcom/sonyericsson/music/common/HighResAwarePermissionCursorLoader;->mHighResType:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    if-eqz v2, :cond_0

    .line 64
    iget-object v1, p0, Lcom/sonyericsson/music/common/HighResAwarePermissionCursorLoader;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->MEDIA_STORE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;

    invoke-static {v1, v3, v2}, Lcom/sonyericsson/music/common/HDAudioUtils;->getHDContent(Landroid/content/Context;Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;)Ljava/util/HashSet;

    move-result-object v1

    .line 69
    :cond_0
    new-instance v2, Lcom/sonyericsson/music/common/HighResAttachedCursor;

    invoke-direct {v2, v0, v1}, Lcom/sonyericsson/music/common/HighResAttachedCursor;-><init>(Landroid/database/Cursor;Ljava/util/HashSet;)V

    return-object v2

    :cond_1
    return-object v1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/HighResAwarePermissionCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 2

    .line 77
    invoke-super {p0}, Landroidx/loader/content/CursorLoader;->onReset()V

    .line 79
    iget-boolean v0, p0, Lcom/sonyericsson/music/common/HighResAwarePermissionCursorLoader;->mRegisteredObserver:Z

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sonyericsson/music/common/HighResAwarePermissionCursorLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/common/HighResAwarePermissionCursorLoader;->mObserver:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/sonyericsson/music/common/HighResAwarePermissionCursorLoader;->mRegisteredObserver:Z

    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 4

    .line 46
    invoke-super {p0}, Landroidx/loader/content/CursorLoader;->onStartLoading()V

    .line 48
    iget-boolean v0, p0, Lcom/sonyericsson/music/common/HighResAwarePermissionCursorLoader;->mRegisteredObserver:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/common/HighResAwarePermissionCursorLoader;->mHighResType:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/sonyericsson/music/common/HighResAwarePermissionCursorLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 50
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/common/HighResAwarePermissionCursorLoader;->mObserver:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    const/4 v3, 0x1

    .line 49
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 52
    iput-boolean v3, p0, Lcom/sonyericsson/music/common/HighResAwarePermissionCursorLoader;->mRegisteredObserver:Z

    :cond_0
    return-void
.end method
