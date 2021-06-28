.class public Lcom/sonyericsson/music/common/PlaylistsLoader;
.super Landroidx/loader/content/CursorLoader;
.source "PlaylistsLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/common/PlaylistsLoader$Mode;
    }
.end annotation


# instance fields
.field private final mContentObserver:Landroidx/loader/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field private final mIsManageMode:Z

.field private final mMode:Lcom/sonyericsson/music/common/PlaylistsLoader$Mode;

.field private mPlaylistSortOrder:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/common/PlaylistsLoader$Mode;Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;Z)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance p1, Landroidx/loader/content/Loader$ForceLoadContentObserver;

    invoke-direct {p1, p0}, Landroidx/loader/content/Loader$ForceLoadContentObserver;-><init>(Landroidx/loader/content/Loader;)V

    iput-object p1, p0, Lcom/sonyericsson/music/common/PlaylistsLoader;->mContentObserver:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    .line 44
    iput-object p2, p0, Lcom/sonyericsson/music/common/PlaylistsLoader;->mMode:Lcom/sonyericsson/music/common/PlaylistsLoader$Mode;

    .line 45
    iput-object p3, p0, Lcom/sonyericsson/music/common/PlaylistsLoader;->mPlaylistSortOrder:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    .line 46
    iput-boolean p4, p0, Lcom/sonyericsson/music/common/PlaylistsLoader;->mIsManageMode:Z

    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 5

    .line 51
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 57
    iget-object v1, p0, Lcom/sonyericsson/music/common/PlaylistsLoader;->mPlaylistSortOrder:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    if-nez v1, :cond_0

    .line 58
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "pref_key_playlist_sort_order"

    sget-object v4, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->ALPHABETICAL:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    .line 60
    invoke-virtual {v4}, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->getIndex()I

    move-result v4

    .line 58
    invoke-static {v1, v3, v4}, Lcom/sonyericsson/music/common/SettingsProviderWrapper;->get(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 61
    invoke-static {v1}, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->indexToSortOrder(I)Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/music/common/PlaylistsLoader;->mPlaylistSortOrder:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    .line 64
    :cond_0
    sget-object v1, Lcom/sonyericsson/music/common/PlaylistsLoader$1;->$SwitchMap$com$sonyericsson$music$common$PlaylistsLoader$Mode:[I

    iget-object v3, p0, Lcom/sonyericsson/music/common/PlaylistsLoader;->mMode:Lcom/sonyericsson/music/common/PlaylistsLoader$Mode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 81
    :pswitch_0
    sget-object v1, Lcom/sonyericsson/music/common/DBUtils$PlaylistsFilter;->NON_HIDDEN_EDITABLE:Lcom/sonyericsson/music/common/DBUtils$PlaylistsFilter;

    iget-object v2, p0, Lcom/sonyericsson/music/common/PlaylistsLoader;->mPlaylistSortOrder:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/common/DBUtils;->getLocalPlaylists(Landroid/content/Context;Lcom/sonyericsson/music/common/DBUtils$PlaylistsFilter;Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 77
    :pswitch_1
    sget-object v1, Lcom/sonyericsson/music/common/DBUtils$PlaylistsFilter;->NON_HIDDEN_NON_SMART:Lcom/sonyericsson/music/common/DBUtils$PlaylistsFilter;

    iget-object v2, p0, Lcom/sonyericsson/music/common/PlaylistsLoader;->mPlaylistSortOrder:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/common/DBUtils;->getLocalPlaylists(Landroid/content/Context;Lcom/sonyericsson/music/common/DBUtils$PlaylistsFilter;Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 66
    :pswitch_2
    iget-boolean v1, p0, Lcom/sonyericsson/music/common/PlaylistsLoader;->mIsManageMode:Z

    if-eqz v1, :cond_1

    .line 68
    sget-object v1, Lcom/sonyericsson/music/common/DBUtils$PlaylistsFilter;->ALL_INCLUDING_HIDDEN:Lcom/sonyericsson/music/common/DBUtils$PlaylistsFilter;

    iget-object v2, p0, Lcom/sonyericsson/music/common/PlaylistsLoader;->mPlaylistSortOrder:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/common/DBUtils;->getLocalPlaylists(Landroid/content/Context;Lcom/sonyericsson/music/common/DBUtils$PlaylistsFilter;Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 72
    :cond_1
    sget-object v1, Lcom/sonyericsson/music/common/DBUtils$PlaylistsFilter;->ALL_NON_HIDDEN:Lcom/sonyericsson/music/common/DBUtils$PlaylistsFilter;

    iget-object v2, p0, Lcom/sonyericsson/music/common/PlaylistsLoader;->mPlaylistSortOrder:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/common/DBUtils;->getLocalPlaylists(Landroid/content/Context;Lcom/sonyericsson/music/common/DBUtils$PlaylistsFilter;Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_2

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/music/common/PlaylistsLoader;->mContentObserver:Landroidx/loader/content/Loader$ForceLoadContentObserver;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    :cond_2
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/PlaylistsLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
