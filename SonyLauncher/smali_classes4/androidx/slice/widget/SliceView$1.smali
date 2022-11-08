.class Landroidx/slice/widget/SliceView$1;
.super Ljava/lang/Object;
.source "SliceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/SliceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/slice/widget/SliceView;


# direct methods
.method constructor <init>(Landroidx/slice/widget/SliceView;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/slice/widget/SliceView;

    .line 872
    iput-object p1, p0, Landroidx/slice/widget/SliceView$1;->this$0:Landroidx/slice/widget/SliceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 875
    iget-object v0, p0, Landroidx/slice/widget/SliceView$1;->this$0:Landroidx/slice/widget/SliceView;

    iget-boolean v0, v0, Landroidx/slice/widget/SliceView;->mPressing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/SliceView$1;->this$0:Landroidx/slice/widget/SliceView;

    iget-object v0, v0, Landroidx/slice/widget/SliceView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Landroidx/slice/widget/SliceView$1;->this$0:Landroidx/slice/widget/SliceView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/slice/widget/SliceView;->mInLongpress:Z

    .line 877
    iget-object v0, p0, Landroidx/slice/widget/SliceView$1;->this$0:Landroidx/slice/widget/SliceView;

    iget-object v0, v0, Landroidx/slice/widget/SliceView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    iget-object v1, p0, Landroidx/slice/widget/SliceView$1;->this$0:Landroidx/slice/widget/SliceView;

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 878
    iget-object v0, p0, Landroidx/slice/widget/SliceView$1;->this$0:Landroidx/slice/widget/SliceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceView;->performHapticFeedback(I)Z

    .line 880
    :cond_0
    return-void
.end method
