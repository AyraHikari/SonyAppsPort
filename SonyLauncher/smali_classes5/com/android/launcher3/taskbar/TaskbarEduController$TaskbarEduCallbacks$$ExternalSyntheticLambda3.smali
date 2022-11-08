.class public final synthetic Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;

    iput p2, p0, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks$$ExternalSyntheticLambda3;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;->lambda$onPageChanged$3$com-android-launcher3-taskbar-TaskbarEduController$TaskbarEduCallbacks(ILandroid/view/View;)V

    return-void
.end method
