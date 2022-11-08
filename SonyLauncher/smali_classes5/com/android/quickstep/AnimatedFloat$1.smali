.class Lcom/android/quickstep/AnimatedFloat$1;
.super Landroid/util/FloatProperty;
.source "AnimatedFloat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/AnimatedFloat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/quickstep/AnimatedFloat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/quickstep/AnimatedFloat;)Ljava/lang/Float;
    .locals 1
    .param p1, "obj"    # Lcom/android/quickstep/AnimatedFloat;

    .line 37
    iget v0, p1, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/AnimatedFloat$1;->get(Lcom/android/quickstep/AnimatedFloat;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/android/quickstep/AnimatedFloat;F)V
    .locals 0
    .param p1, "obj"    # Lcom/android/quickstep/AnimatedFloat;
    .param p2, "v"    # F

    .line 32
    invoke-virtual {p1, p2}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    .line 33
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 29
    check-cast p1, Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/AnimatedFloat$1;->setValue(Lcom/android/quickstep/AnimatedFloat;F)V

    return-void
.end method
