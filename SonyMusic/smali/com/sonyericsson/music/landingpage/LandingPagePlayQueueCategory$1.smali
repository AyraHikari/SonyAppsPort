.class Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory$1;
.super Ljava/lang/Object;
.source "LandingPagePlayQueueCategory.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;->onCategoryItemLongClick(Landroid/view/View;Lcom/sonyericsson/music/landingpage/LandingPageItemData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;

.field final synthetic val$itemData:Lcom/sonyericsson/music/landingpage/LandingPageItemData;

.field final synthetic val$trackData:Lcom/sonyericsson/music/common/MenuUtils$TrackData;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;Lcom/sonyericsson/music/common/MenuUtils$TrackData;Lcom/sonyericsson/music/landingpage/LandingPageItemData;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory$1;->this$0:Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;

    iput-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory$1;->val$trackData:Lcom/sonyericsson/music/common/MenuUtils$TrackData;

    iput-object p3, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory$1;->val$itemData:Lcom/sonyericsson/music/landingpage/LandingPageItemData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .line 272
    new-instance v0, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    const-string v1, "LandingPageFragment"

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;-><init>(Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory$1;->this$0:Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory;

    iget-object v1, v1, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->mMusicActivity:Lcom/sonyericsson/music/MusicActivity;

    .line 275
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    iget-object v2, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory$1;->val$trackData:Lcom/sonyericsson/music/common/MenuUtils$TrackData;

    iget-object v3, p0, Lcom/sonyericsson/music/landingpage/LandingPagePlayQueueCategory$1;->val$itemData:Lcom/sonyericsson/music/landingpage/LandingPageItemData;

    .line 276
    invoke-virtual {v3}, Lcom/sonyericsson/music/landingpage/LandingPageItemData;->getItemViewPosition()I

    move-result v3

    .line 275
    invoke-static {v1, p1, v2, v3, v0}, Lcom/sonyericsson/music/common/MenuUtils;->onTrackContextItemSelected(Lcom/sonyericsson/music/MusicActivity;ILcom/sonyericsson/music/common/MenuUtils$TrackData;ILcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Z

    const/4 p1, 0x1

    return p1
.end method
