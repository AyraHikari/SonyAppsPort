.class public Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;
.super Ljava/lang/Object;
.source "TaskView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/TaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskIdAttributeContainer"
.end annotation


# instance fields
.field private final mA11yNodeId:I

.field private final mIconView:Lcom/android/quickstep/views/IconView;

.field private mStagePosition:I

.field private final mTask:Lcom/android/systemui/shared/recents/model/Task;

.field private final mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

.field final synthetic this$0:Lcom/android/quickstep/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/views/TaskThumbnailView;Lcom/android/quickstep/views/IconView;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/quickstep/views/TaskView;
    .param p2, "task"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p3, "thumbnailView"    # Lcom/android/quickstep/views/TaskThumbnailView;
    .param p4, "iconView"    # Lcom/android/quickstep/views/IconView;
    .param p5, "stagePosition"    # I

    .line 1712
    iput-object p1, p0, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->this$0:Lcom/android/quickstep/views/TaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1713
    iput-object p2, p0, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 1714
    iput-object p3, p0, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    .line 1715
    iput-object p4, p0, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->mIconView:Lcom/android/quickstep/views/IconView;

    .line 1716
    iput p5, p0, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->mStagePosition:I

    .line 1717
    const/4 v0, 0x1

    if-ne p5, v0, :cond_0

    .line 1718
    sget v0, Lcom/android/launcher3/R$id;->split_bottomRight_appInfo:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/launcher3/R$id;->split_topLeft_appInfo:I

    :goto_0
    iput v0, p0, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->mA11yNodeId:I

    .line 1719
    return-void
.end method


# virtual methods
.method public getA11yNodeId()I
    .locals 1

    .line 1750
    iget v0, p0, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->mA11yNodeId:I

    return v0
.end method

.method public getIconView()Lcom/android/quickstep/views/IconView;
    .locals 1

    .line 1738
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->mIconView:Lcom/android/quickstep/views/IconView;

    return-object v0
.end method

.method public getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 2

    .line 1730
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->this$0:Lcom/android/quickstep/views/TaskView;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/TaskView;->getItemInfo(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public getStagePosition()I
    .locals 1

    .line 1742
    iget v0, p0, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->mStagePosition:I

    return v0
.end method

.method public getTask()Lcom/android/systemui/shared/recents/model/Task;
    .locals 1

    .line 1726
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    return-object v0
.end method

.method public getTaskView()Lcom/android/quickstep/views/TaskView;
    .locals 1

    .line 1734
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->this$0:Lcom/android/quickstep/views/TaskView;

    return-object v0
.end method

.method public getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;
    .locals 1

    .line 1722
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->mThumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    return-object v0
.end method

.method setStagePosition(I)V
    .locals 0
    .param p1, "stagePosition"    # I

    .line 1746
    iput p1, p0, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->mStagePosition:I

    .line 1747
    return-void
.end method
