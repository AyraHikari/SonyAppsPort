.class public final synthetic Lcom/android/launcher3/taskbar/TaskbarManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/taskbar/TaskbarManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->lambda$new$2$com-android-launcher3-taskbar-TaskbarManager(Landroid/content/Intent;)V

    return-void
.end method
