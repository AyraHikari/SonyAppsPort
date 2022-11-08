.class Lcom/android/quickstep/util/TransformParams$2;
.super Landroid/util/FloatProperty;
.source "TransformParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/TransformParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/quickstep/util/TransformParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/quickstep/util/TransformParams;)Ljava/lang/Float;
    .locals 1
    .param p1, "params"    # Lcom/android/quickstep/util/TransformParams;

    .line 57
    invoke-virtual {p1}, Lcom/android/quickstep/util/TransformParams;->getTargetAlpha()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p1, Lcom/android/quickstep/util/TransformParams;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/TransformParams$2;->get(Lcom/android/quickstep/util/TransformParams;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/android/quickstep/util/TransformParams;F)V
    .locals 0
    .param p1, "params"    # Lcom/android/quickstep/util/TransformParams;
    .param p2, "v"    # F

    .line 52
    invoke-virtual {p1, p2}, Lcom/android/quickstep/util/TransformParams;->setTargetAlpha(F)Lcom/android/quickstep/util/TransformParams;

    .line 53
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 49
    check-cast p1, Lcom/android/quickstep/util/TransformParams;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/util/TransformParams$2;->setValue(Lcom/android/quickstep/util/TransformParams;F)V

    return-void
.end method
