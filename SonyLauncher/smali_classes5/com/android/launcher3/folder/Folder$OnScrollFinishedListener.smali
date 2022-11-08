.class Lcom/android/launcher3/folder/Folder$OnScrollFinishedListener;
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
    name = "OnScrollFinishedListener"
.end annotation


# instance fields
.field private final mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

.field final synthetic this$0:Lcom/android/launcher3/folder/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 0
    .param p2, "object"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 1589
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$OnScrollFinishedListener;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1590
    iput-object p2, p0, Lcom/android/launcher3/folder/Folder$OnScrollFinishedListener;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    .line 1591
    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .locals 2
    .param p1, "alarm"    # Lcom/android/launcher3/Alarm;

    .line 1599
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$OnScrollFinishedListener;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder$OnScrollFinishedListener;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 1600
    return-void
.end method
