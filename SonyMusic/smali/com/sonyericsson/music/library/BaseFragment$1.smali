.class Lcom/sonyericsson/music/library/BaseFragment$1;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/library/BaseFragment;->applyTopPaddingPreDraw(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/library/BaseFragment;

.field final synthetic val$statusBarHeight:I

.field final synthetic val$toolbarHeight:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/library/BaseFragment;II)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/sonyericsson/music/library/BaseFragment$1;->this$0:Lcom/sonyericsson/music/library/BaseFragment;

    iput p2, p0, Lcom/sonyericsson/music/library/BaseFragment$1;->val$statusBarHeight:I

    iput p3, p0, Lcom/sonyericsson/music/library/BaseFragment$1;->val$toolbarHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .line 316
    iget-object v0, p0, Lcom/sonyericsson/music/library/BaseFragment$1;->this$0:Lcom/sonyericsson/music/library/BaseFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 319
    iget-object v0, p0, Lcom/sonyericsson/music/library/BaseFragment$1;->this$0:Lcom/sonyericsson/music/library/BaseFragment;

    iget v1, p0, Lcom/sonyericsson/music/library/BaseFragment$1;->val$statusBarHeight:I

    iget v2, p0, Lcom/sonyericsson/music/library/BaseFragment$1;->val$toolbarHeight:I

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/library/BaseFragment;->access$000(Lcom/sonyericsson/music/library/BaseFragment;II)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
