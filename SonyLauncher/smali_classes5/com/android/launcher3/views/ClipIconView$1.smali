.class Lcom/android/launcher3/views/ClipIconView$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "ClipIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/views/ClipIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/android/launcher3/views/ClipIconView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/android/launcher3/views/ClipIconView;)F
    .locals 1
    .param p1, "view"    # Lcom/android/launcher3/views/ClipIconView;

    .line 75
    invoke-static {p1}, Lcom/android/launcher3/views/ClipIconView;->-$$Nest$fgetmFgTransY(Lcom/android/launcher3/views/ClipIconView;)F

    move-result v0

    return v0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 72
    check-cast p1, Lcom/android/launcher3/views/ClipIconView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/ClipIconView$1;->getValue(Lcom/android/launcher3/views/ClipIconView;)F

    move-result p1

    return p1
.end method

.method public setValue(Lcom/android/launcher3/views/ClipIconView;F)V
    .locals 0
    .param p1, "view"    # Lcom/android/launcher3/views/ClipIconView;
    .param p2, "transY"    # F

    .line 80
    invoke-static {p1, p2}, Lcom/android/launcher3/views/ClipIconView;->-$$Nest$fputmFgTransY(Lcom/android/launcher3/views/ClipIconView;F)V

    .line 81
    invoke-virtual {p1}, Lcom/android/launcher3/views/ClipIconView;->invalidate()V

    .line 82
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 72
    check-cast p1, Lcom/android/launcher3/views/ClipIconView;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/views/ClipIconView$1;->setValue(Lcom/android/launcher3/views/ClipIconView;F)V

    return-void
.end method
