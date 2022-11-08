.class public final synthetic Lcom/android/launcher3/taskbar/TaskbarActivityContext$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field public final synthetic f$1:Lcom/android/launcher3/folder/Folder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/folder/Folder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext$$ExternalSyntheticLambda3;->f$1:Lcom/android/launcher3/folder/Folder;

    return-void
.end method


# virtual methods
.method public final onFolderStateChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext$$ExternalSyntheticLambda3;->f$1:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->lambda$onTaskbarIconClicked$3$com-android-launcher3-taskbar-TaskbarActivityContext(Lcom/android/launcher3/folder/Folder;I)V

    return-void
.end method
