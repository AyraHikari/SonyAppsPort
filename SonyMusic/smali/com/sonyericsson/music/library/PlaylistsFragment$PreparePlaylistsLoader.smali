.class Lcom/sonyericsson/music/library/PlaylistsFragment$PreparePlaylistsLoader;
.super Landroidx/loader/content/CursorLoader;
.source "PlaylistsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/PlaylistsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PreparePlaylistsLoader"
.end annotation


# static fields
.field static final COLUMNS:[Ljava/lang/String;

.field static final PLAYLISTS_SORT_ORDER:Ljava/lang/String; = "playlists_sort_order"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 887
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "playlists_sort_order"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/music/library/PlaylistsFragment$PreparePlaylistsLoader;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 890
    invoke-direct {p0, p1}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 4

    .line 895
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/sonyericsson/music/library/PlaylistsFragment$PreparePlaylistsLoader;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 898
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pref_key_playlist_sort_order"

    sget-object v3, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->ALPHABETICAL:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    .line 900
    invoke-virtual {v3}, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->getIndex()I

    move-result v3

    .line 898
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/music/common/SettingsProviderWrapper;->get(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    .line 902
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 885
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/PlaylistsFragment$PreparePlaylistsLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
