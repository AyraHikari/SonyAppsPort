.class Lcom/sonyericsson/music/landingpage/LandingPageFragment$5;
.super Ljava/lang/Object;
.source "LandingPageFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/landingpage/LandingPageFragment;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
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

    .line 551
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$5;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 554
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$5;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/landingpage/LandingPageFragment;->access$100(Lcom/sonyericsson/music/landingpage/LandingPageFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const-string v0, "coldstart_until_lp_draw"

    .line 555
    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/LandingPageFragment$5;->this$0:Lcom/sonyericsson/music/landingpage/LandingPageFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/music/debug/DebugTimer;->stopWithToast(Ljava/lang/String;Landroid/content/Context;)V

    const-string v0, "lp_cursors_swapped_until_draw"

    .line 556
    invoke-static {v0}, Lcom/sonyericsson/music/debug/DebugTimer;->stop(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
