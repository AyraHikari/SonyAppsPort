.class Lcom/sonyericsson/music/library/PlaylistBaseFragment$UpdatePlaylistArtTask;
.super Landroid/os/AsyncTask;
.source "PlaylistBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/PlaylistBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdatePlaylistArtTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mArtUri:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mPlaylistArtStoreUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 688
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 689
    iput-object p1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$UpdatePlaylistArtTask;->mContext:Landroid/content/Context;

    .line 690
    iput-object p3, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$UpdatePlaylistArtTask;->mArtUri:Ljava/lang/String;

    .line 691
    iput-object p2, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$UpdatePlaylistArtTask;->mPlaylistArtStoreUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 680
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/PlaylistBaseFragment$UpdatePlaylistArtTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    .line 696
    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$UpdatePlaylistArtTask;->mPlaylistArtStoreUri:Landroid/net/Uri;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 697
    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$UpdatePlaylistArtTask;->mArtUri:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 699
    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$UpdatePlaylistArtTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$UpdatePlaylistArtTask;->mPlaylistArtStoreUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 702
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 706
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 707
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "playlist_art_uri"

    .line 708
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 711
    iget-object v2, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$UpdatePlaylistArtTask;->mArtUri:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 712
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "playlist_art_uri"

    .line 713
    iget-object v3, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$UpdatePlaylistArtTask;->mArtUri:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    iget-object v2, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$UpdatePlaylistArtTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$UpdatePlaylistArtTask;->mPlaylistArtStoreUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 703
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "playlist_art_uri"

    .line 704
    iget-object v3, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$UpdatePlaylistArtTask;->mArtUri:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    iget-object v2, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$UpdatePlaylistArtTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$UpdatePlaylistArtTask;->mPlaylistArtStoreUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    if-eqz p1, :cond_5

    .line 721
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 723
    :cond_3
    throw v0

    .line 725
    :cond_4
    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$UpdatePlaylistArtTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$UpdatePlaylistArtTask;->mPlaylistArtStoreUri:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-object v0
.end method
