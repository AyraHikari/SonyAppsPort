.class Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper$1;
.super Landroid/util/FloatProperty;
.source "ItemFocusIndicatorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;

    .line 54
    invoke-static {p1}, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->-$$Nest$fgetmAlpha(Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p1, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper$1;->get(Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;F)V
    .locals 0
    .param p1, "object"    # Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;
    .param p2, "value"    # F

    .line 49
    invoke-virtual {p1, p2}, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->setAlpha(F)V

    .line 50
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 45
    check-cast p1, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper$1;->setValue(Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;F)V

    return-void
.end method
