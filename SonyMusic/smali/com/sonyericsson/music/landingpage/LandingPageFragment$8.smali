.class Lcom/sonyericsson/music/landingpage/LandingPageFragment$8;
.super Ljava/lang/Object;
.source "LandingPageFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/landingpage/LandingPageFragment;->onArtistInfoChanged(Lcom/sonyericsson/music/common/ArtistInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

.field final synthetic val$artistInfo:Lcom/sonyericsson/music/common/ArtistInfo;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/landingpage/LandingPageFragment;Lcom/sonyericsson/music/common/ArtistInfo;)V
    .locals 0

    .line 809
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$8;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    iput-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$8;->val$artistInfo:Lcom/sonyericsson/music/common/ArtistInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 8

    .line 813
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$8;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->access$500(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)V

    .line 815
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$8;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->access$600(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)Lcom/sonyericsson/music/landingpage/LandingPageArtistView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 816
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$8;->val$artistInfo:Lcom/sonyericsson/music/common/ArtistInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/ArtistInfo;->getArtistArtUri()Landroid/net/Uri;

    move-result-object v0

    .line 817
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$8;->val$artistInfo:Lcom/sonyericsson/music/common/ArtistInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/ArtistInfo;->getArtistName()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 818
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    if-eqz v1, :cond_1

    .line 819
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    move v4, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 820
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$8;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->access$600(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)Lcom/sonyericsson/music/landingpage/LandingPageArtistView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 821
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$8;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->access$800(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    move-result-object v2

    new-instance v7, Lcom/sonyericsson/music/landingpage/LandingPageFragment$ArtistImageDecodedListener;

    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$8;->val$artistInfo:Lcom/sonyericsson/music/common/ArtistInfo;

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$8;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    .line 822
    invoke-static {v1}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->access$600(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)Lcom/sonyericsson/music/landingpage/LandingPageArtistView;

    move-result-object v1

    iget-object v5, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$8;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    .line 823
    invoke-static {v5}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->access$700(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v7, v0, v1, v5}, Lcom/sonyericsson/music/landingpage/LandingPageFragment$ArtistImageDecodedListener;-><init>(Lcom/sonyericsson/music/common/ArtistInfo;Lcom/sonyericsson/music/landingpage/LandingPageArtistView;Landroid/graphics/Bitmap;)V

    move v5, v6

    .line 821
    invoke-virtual/range {v2 .. v7}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->load(Ljava/lang/String;IIILcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)Z

    :cond_2
    const/4 v0, 0x1

    return v0
.end method
