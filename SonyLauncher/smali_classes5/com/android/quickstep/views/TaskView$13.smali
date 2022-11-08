.class Lcom/android/quickstep/views/TaskView$13;
.super Landroid/util/FloatProperty;
.source "TaskView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/TaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/quickstep/views/TaskView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .line 364
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/quickstep/views/TaskView;)Ljava/lang/Float;
    .locals 1
    .param p1, "taskView"    # Lcom/android/quickstep/views/TaskView;

    .line 372
    iget-object v0, p1, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView;->getScaleX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 364
    check-cast p1, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskView$13;->get(Lcom/android/quickstep/views/TaskView;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/android/quickstep/views/TaskView;F)V
    .locals 0
    .param p1, "taskView"    # Lcom/android/quickstep/views/TaskView;
    .param p2, "v"    # F

    .line 367
    invoke-static {p1, p2}, Lcom/android/quickstep/views/TaskView;->-$$Nest$msetSnapshotScale(Lcom/android/quickstep/views/TaskView;F)V

    .line 368
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 364
    check-cast p1, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/views/TaskView$13;->setValue(Lcom/android/quickstep/views/TaskView;F)V

    return-void
.end method
