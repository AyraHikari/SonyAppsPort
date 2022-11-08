.class Lcom/sonyericsson/music/common/UIUtils$1;
.super Ljava/lang/Object;
.source "UIUtils.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/common/UIUtils;->waitForMeasure(Landroid/view/View;Lcom/sonyericsson/music/common/UIUtils$MeasureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/sonyericsson/music/common/UIUtils$MeasureCallback;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/sonyericsson/music/common/UIUtils$MeasureCallback;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/sonyericsson/music/common/UIUtils$1;->val$view:Landroid/view/View;

    iput-object p2, p0, Lcom/sonyericsson/music/common/UIUtils$1;->val$callback:Lcom/sonyericsson/music/common/UIUtils$MeasureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .line 458
    iget-object v0, p0, Lcom/sonyericsson/music/common/UIUtils$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 459
    iget-object v0, p0, Lcom/sonyericsson/music/common/UIUtils$1;->val$callback:Lcom/sonyericsson/music/common/UIUtils$MeasureCallback;

    iget-object v1, p0, Lcom/sonyericsson/music/common/UIUtils$1;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/music/common/UIUtils$1;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/sonyericsson/music/common/UIUtils$MeasureCallback;->onMeasured(Landroid/view/View;II)V

    const/4 v0, 0x1

    return v0
.end method
