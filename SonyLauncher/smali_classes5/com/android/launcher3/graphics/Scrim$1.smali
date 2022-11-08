.class Lcom/android/launcher3/graphics/Scrim$1;
.super Landroid/util/FloatProperty;
.source "Scrim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/graphics/Scrim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/launcher3/graphics/Scrim;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/graphics/Scrim;)Ljava/lang/Float;
    .locals 1
    .param p1, "scrim"    # Lcom/android/launcher3/graphics/Scrim;

    .line 36
    iget v0, p1, Lcom/android/launcher3/graphics/Scrim;->mScrimProgress:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, Lcom/android/launcher3/graphics/Scrim;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/graphics/Scrim$1;->get(Lcom/android/launcher3/graphics/Scrim;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/android/launcher3/graphics/Scrim;F)V
    .locals 0
    .param p1, "scrim"    # Lcom/android/launcher3/graphics/Scrim;
    .param p2, "v"    # F

    .line 41
    invoke-static {p1, p2}, Lcom/android/launcher3/graphics/Scrim;->-$$Nest$msetScrimProgress(Lcom/android/launcher3/graphics/Scrim;F)V

    .line 42
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 33
    check-cast p1, Lcom/android/launcher3/graphics/Scrim;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/graphics/Scrim$1;->setValue(Lcom/android/launcher3/graphics/Scrim;F)V

    return-void
.end method
