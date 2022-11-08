.class public final synthetic Lcom/android/launcher3/taskbar/TaskbarActivityContext$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/taskbar/TaskbarActivityContext;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext$$ExternalSyntheticLambda5;->f$0:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext$$ExternalSyntheticLambda5;->f$0:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->lambda$onTaskbarIconClicked$2$com-android-launcher3-taskbar-TaskbarActivityContext()V

    return-void
.end method
