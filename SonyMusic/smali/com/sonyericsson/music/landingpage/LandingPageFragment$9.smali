.class Lcom/sonyericsson/music/landingpage/LandingPageFragment$9;
.super Ljava/lang/Object;
.source "LandingPageFragment.java"

# interfaces
.implements Lcom/squareup/picasso/Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/landingpage/LandingPageFragment;->loadHeaderImage(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)V
    .locals 0

    .line 848
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$9;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 858
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$9;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->access$902(Lcom/sonyericsson/music/landingpage/LandingPageFragment;Lcom/squareup/picasso/Target;)Lcom/squareup/picasso/Target;

    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 1

    .line 851
    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$9;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->access$902(Lcom/sonyericsson/music/landingpage/LandingPageFragment;Lcom/squareup/picasso/Target;)Lcom/squareup/picasso/Target;

    .line 852
    iget-object p2, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$9;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    invoke-static {p2, p1}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->access$702(Lcom/sonyericsson/music/landingpage/LandingPageFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 853
    iget-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$9;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    invoke-static {p1}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->access$1000(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)V

    return-void
.end method

.method public onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method
