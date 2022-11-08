.class Lcom/sonyericsson/music/library/PlaylistBaseFragment$1;
.super Landroid/os/AsyncTask;
.source "PlaylistBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/library/PlaylistBaseFragment;->onLocalContextItemSelected(Landroid/view/MenuItem;ILcom/sonyericsson/music/common/MenuUtils$TrackData;Landroid/net/Uri;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/library/PlaylistBaseFragment;

.field final synthetic val$activity:Lcom/sonyericsson/music/MusicActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$data:Lcom/sonyericsson/music/common/MenuUtils$TrackData;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/library/PlaylistBaseFragment;Lcom/sonyericsson/music/common/MenuUtils$TrackData;Landroid/content/Context;Lcom/sonyericsson/music/MusicActivity;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$1;->this$0:Lcom/sonyericsson/music/library/PlaylistBaseFragment;

    iput-object p2, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$1;->val$data:Lcom/sonyericsson/music/common/MenuUtils$TrackData;

    iput-object p3, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$1;->val$activity:Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 470
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/PlaylistBaseFragment$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    .line 473
    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$1;->val$data:Lcom/sonyericsson/music/common/MenuUtils$TrackData;

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->getArtistName()Ljava/lang/String;

    move-result-object p1

    .line 474
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$1;->val$data:Lcom/sonyericsson/music/common/MenuUtils$TrackData;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->getArtistName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$1;->val$data:Lcom/sonyericsson/music/common/MenuUtils$TrackData;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->getArtistUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 475
    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$1;->val$data:Lcom/sonyericsson/music/common/MenuUtils$TrackData;

    .line 476
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->getArtistUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 475
    invoke-static {p1, v0, v1}, Lcom/sonyericsson/music/common/DBUtils;->getArtistName(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 470
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/PlaylistBaseFragment$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4

    .line 482
    sget-object v0, Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;->ARTIST_ID:Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;

    iget-object v1, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$1;->val$data:Lcom/sonyericsson/music/common/MenuUtils$TrackData;

    .line 483
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/MenuUtils$TrackData;->getArtistUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$1;->this$0:Lcom/sonyericsson/music/library/PlaylistBaseFragment;

    .line 484
    invoke-virtual {v2}, Lcom/sonyericsson/music/library/PlaylistBaseFragment;->getAggregator()Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    move-result-object v2

    const/4 v3, 0x0

    .line 482
    invoke-static {v0, v1, p1, v3, v2}, Lcom/sonyericsson/music/library/artist/ArtistFragment;->newInstance(Lcom/sonyericsson/music/library/artist/ArtistFragment$ArtistFragmentLoadType;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/artist/ArtistFragment;

    move-result-object p1

    .line 485
    iget-object v0, p0, Lcom/sonyericsson/music/library/PlaylistBaseFragment$1;->val$activity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v0

    const-string v1, "artist"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    return-void
.end method
