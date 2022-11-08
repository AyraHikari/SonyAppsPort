.class Lcom/android/launcher3/folder/Folder$7;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/Folder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/folder/Folder;

    .line 902
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$7;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .locals 3
    .param p1, "alarm"    # Lcom/android/launcher3/Alarm;

    .line 904
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$7;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder$7;->this$0:Lcom/android/launcher3/folder/Folder;

    iget v1, v1, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder$7;->this$0:Lcom/android/launcher3/folder/Folder;

    iget v2, v2, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/folder/FolderPagedView;->realTimeReorder(II)V

    .line 905
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$7;->this$0:Lcom/android/launcher3/folder/Folder;

    iget v1, v0, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    iput v1, v0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    .line 906
    return-void
.end method
