.class Lcom/android/launcher3/folder/Folder$8;
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

    .line 980
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$8;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .locals 1
    .param p1, "alarm"    # Lcom/android/launcher3/Alarm;

    .line 982
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$8;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->completeDragExit()V

    .line 983
    return-void
.end method
