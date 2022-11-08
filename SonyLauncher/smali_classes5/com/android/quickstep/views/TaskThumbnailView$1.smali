.class Lcom/android/quickstep/views/TaskThumbnailView$1;
.super Landroid/util/FloatProperty;
.source "TaskThumbnailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/TaskThumbnailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/quickstep/views/TaskThumbnailView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .line 68
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/quickstep/views/TaskThumbnailView;)Ljava/lang/Float;
    .locals 1
    .param p1, "thumbnailView"    # Lcom/android/quickstep/views/TaskThumbnailView;

    .line 76
    invoke-static {p1}, Lcom/android/quickstep/views/TaskThumbnailView;->-$$Nest$fgetmDimAlpha(Lcom/android/quickstep/views/TaskThumbnailView;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    check-cast p1, Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskThumbnailView$1;->get(Lcom/android/quickstep/views/TaskThumbnailView;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/android/quickstep/views/TaskThumbnailView;F)V
    .locals 0
    .param p1, "thumbnail"    # Lcom/android/quickstep/views/TaskThumbnailView;
    .param p2, "dimAlpha"    # F

    .line 71
    invoke-virtual {p1, p2}, Lcom/android/quickstep/views/TaskThumbnailView;->setDimAlpha(F)V

    .line 72
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 68
    check-cast p1, Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/views/TaskThumbnailView$1;->setValue(Lcom/android/quickstep/views/TaskThumbnailView;F)V

    return-void
.end method
