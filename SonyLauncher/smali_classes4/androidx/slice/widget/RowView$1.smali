.class Landroidx/slice/widget/RowView$1;
.super Ljava/lang/Object;
.source "RowView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/slice/widget/RowView;->showSeeMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/slice/widget/RowView;

.field final synthetic val$b:Landroid/widget/Button;


# direct methods
.method constructor <init>(Landroidx/slice/widget/RowView;Landroid/widget/Button;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/slice/widget/RowView;

    .line 1109
    iput-object p1, p0, Landroidx/slice/widget/RowView$1;->this$0:Landroidx/slice/widget/RowView;

    iput-object p2, p0, Landroidx/slice/widget/RowView$1;->val$b:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 1113
    :try_start_0
    iget-object v0, p0, Landroidx/slice/widget/RowView$1;->this$0:Landroidx/slice/widget/RowView;

    iget-object v0, v0, Landroidx/slice/widget/RowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz v0, :cond_0

    .line 1114
    new-instance v0, Landroidx/slice/widget/EventInfo;

    iget-object v1, p0, Landroidx/slice/widget/RowView$1;->this$0:Landroidx/slice/widget/RowView;

    invoke-virtual {v1}, Landroidx/slice/widget/RowView;->getMode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/slice/widget/RowView$1;->this$0:Landroidx/slice/widget/RowView;

    iget v4, v4, Landroidx/slice/widget/RowView;->mRowIndex:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    .line 1116
    .local v0, "info":Landroidx/slice/widget/EventInfo;
    iget-object v1, p0, Landroidx/slice/widget/RowView$1;->this$0:Landroidx/slice/widget/RowView;

    iget-object v1, v1, Landroidx/slice/widget/RowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    iget-object v2, p0, Landroidx/slice/widget/RowView$1;->this$0:Landroidx/slice/widget/RowView;

    iget-object v2, v2, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v2}, Landroidx/slice/widget/RowContent;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V

    .line 1118
    .end local v0    # "info":Landroidx/slice/widget/EventInfo;
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/RowView$1;->this$0:Landroidx/slice/widget/RowView;

    iget-object v1, v0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 1119
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v1

    iget-object v2, p0, Landroidx/slice/widget/RowView$1;->this$0:Landroidx/slice/widget/RowView;

    invoke-virtual {v2}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/slice/SliceItem;->fireActionInternal(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, v0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    .line 1120
    iget-object v0, p0, Landroidx/slice/widget/RowView$1;->this$0:Landroidx/slice/widget/RowView;

    iget-boolean v0, v0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    if-eqz v0, :cond_2

    .line 1121
    iget-object v0, p0, Landroidx/slice/widget/RowView$1;->this$0:Landroidx/slice/widget/RowView;

    iget-object v0, v0, Landroidx/slice/widget/RowView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    if-eqz v0, :cond_1

    .line 1122
    iget-object v0, p0, Landroidx/slice/widget/RowView$1;->this$0:Landroidx/slice/widget/RowView;

    iget-object v0, v0, Landroidx/slice/widget/RowView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    iget-object v1, p0, Landroidx/slice/widget/RowView$1;->this$0:Landroidx/slice/widget/RowView;

    iget-object v1, v1, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v1

    iget-object v2, p0, Landroidx/slice/widget/RowView$1;->this$0:Landroidx/slice/widget/RowView;

    iget v2, v2, Landroidx/slice/widget/RowView;->mRowIndex:I

    invoke-interface {v0, v1, v2}, Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;->onSliceActionLoading(Landroidx/slice/SliceItem;I)V

    .line 1125
    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/RowView$1;->this$0:Landroidx/slice/widget/RowView;

    iget-object v0, v0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    iget-object v1, p0, Landroidx/slice/widget/RowView$1;->this$0:Landroidx/slice/widget/RowView;

    iget-object v1, v1, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1126
    iget-object v0, p0, Landroidx/slice/widget/RowView$1;->val$b:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1128
    :cond_2
    iget-object v0, p0, Landroidx/slice/widget/RowView$1;->this$0:Landroidx/slice/widget/RowView;

    invoke-virtual {v0}, Landroidx/slice/widget/RowView;->updateActionSpinner()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1131
    goto :goto_0

    .line 1129
    :catch_0
    move-exception v0

    .line 1130
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "RowView"

    const-string v2, "PendingIntent for slice cannot be sent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1132
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_0
    return-void
.end method
