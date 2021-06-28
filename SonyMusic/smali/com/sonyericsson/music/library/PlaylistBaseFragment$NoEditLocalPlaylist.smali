.class public final Lcom/sonyericsson/music/library/PlaylistBaseFragment$NoEditLocalPlaylist;
.super Ljava/lang/Object;
.source "PlaylistBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/PlaylistBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoEditLocalPlaylist"
.end annotation


# static fields
.field private static final sNoEditLocalPlaylistId:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 655
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$NoEditLocalPlaylist;->sNoEditLocalPlaylistId:Landroidx/collection/ArraySet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addNoEditLocalPlaylist(J)V
    .locals 2

    .line 658
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    return-void

    .line 659
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$NoEditLocalPlaylist;->sNoEditLocalPlaylistId:Landroidx/collection/ArraySet;

    monitor-enter v0

    .line 660
    :try_start_0
    sget-object v1, Lcom/sonyericsson/music/library/PlaylistBaseFragment$NoEditLocalPlaylist;->sNoEditLocalPlaylistId:Landroidx/collection/ArraySet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 661
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static containsNoEditLocalPlaylist(J)Z
    .locals 2

    .line 672
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 673
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$NoEditLocalPlaylist;->sNoEditLocalPlaylistId:Landroidx/collection/ArraySet;

    monitor-enter v0

    .line 674
    :try_start_0
    sget-object v1, Lcom/sonyericsson/music/library/PlaylistBaseFragment$NoEditLocalPlaylist;->sNoEditLocalPlaylistId:Landroidx/collection/ArraySet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 675
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static removeNoEditLocalPlaylist(J)V
    .locals 2

    .line 665
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    return-void

    .line 666
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$NoEditLocalPlaylist;->sNoEditLocalPlaylistId:Landroidx/collection/ArraySet;

    monitor-enter v0

    .line 667
    :try_start_0
    sget-object v1, Lcom/sonyericsson/music/library/PlaylistBaseFragment$NoEditLocalPlaylist;->sNoEditLocalPlaylistId:Landroidx/collection/ArraySet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 668
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
