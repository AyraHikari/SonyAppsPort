.class Lcom/android/launcher3/CellLayout$1;
.super Landroid/util/FloatProperty;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/launcher3/CellLayout;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .line 208
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/CellLayout;)Ljava/lang/Float;
    .locals 1
    .param p1, "cl"    # Lcom/android/launcher3/CellLayout;

    .line 211
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getSpringLoadedProgress()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 208
    check-cast p1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout$1;->get(Lcom/android/launcher3/CellLayout;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/android/launcher3/CellLayout;F)V
    .locals 0
    .param p1, "cl"    # Lcom/android/launcher3/CellLayout;
    .param p2, "progress"    # F

    .line 216
    invoke-virtual {p1, p2}, Lcom/android/launcher3/CellLayout;->setSpringLoadedProgress(F)V

    .line 217
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 208
    check-cast p1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/CellLayout$1;->setValue(Lcom/android/launcher3/CellLayout;F)V

    return-void
.end method
