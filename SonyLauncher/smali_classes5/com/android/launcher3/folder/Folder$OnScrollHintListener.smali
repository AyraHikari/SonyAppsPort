.class Lcom/android/launcher3/folder/Folder$OnScrollHintListener;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnScrollHintListener"
.end annotation


# instance fields
.field private final mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

.field final synthetic this$0:Lcom/android/launcher3/folder/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 0
    .param p2, "object"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 1556
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1557
    iput-object p2, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    .line 1558
    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .locals 4
    .param p1, "alarm"    # Lcom/android/launcher3/Alarm;

    .line 1565
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/Folder;

    iget v0, v0, Lcom/android/launcher3/folder/Folder;->mCurrentScrollDir:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1566
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->scrollLeft()Z

    .line 1567
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/Folder;

    iput v1, v0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    goto :goto_0

    .line 1568
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/Folder;

    iget v0, v0, Lcom/android/launcher3/folder/Folder;->mCurrentScrollDir:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1569
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->scrollRight()Z

    .line 1570
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/Folder;

    iput v1, v0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    .line 1575
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/Folder;

    iput v1, v0, Lcom/android/launcher3/folder/Folder;->mCurrentScrollDir:I

    .line 1578
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    new-instance v1, Lcom/android/launcher3/folder/Folder$OnScrollFinishedListener;

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v3, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/folder/Folder$OnScrollFinishedListener;-><init>(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/DropTarget$DragObject;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 1579
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$integer;->config_pageSnapAnimationDuration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x96

    .line 1581
    .local v0, "rescrollDelay":I
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v1, v1, Lcom/android/launcher3/folder/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 1582
    return-void

    .line 1573
    .end local v0    # "rescrollDelay":I
    :cond_1
    return-void
.end method
