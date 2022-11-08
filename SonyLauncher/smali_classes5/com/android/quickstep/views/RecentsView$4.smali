.class Lcom/android/quickstep/views/RecentsView$4;
.super Landroid/util/FloatProperty;
.source "RecentsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/RecentsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/quickstep/views/RecentsView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .line 257
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/quickstep/views/RecentsView;)Ljava/lang/Float;
    .locals 1
    .param p1, "recentsView"    # Lcom/android/quickstep/views/RecentsView;

    .line 268
    invoke-static {p1}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$fgetmAdjacentPageHorizontalOffset(Lcom/android/quickstep/views/RecentsView;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 257
    check-cast p1, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView$4;->get(Lcom/android/quickstep/views/RecentsView;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/android/quickstep/views/RecentsView;F)V
    .locals 1
    .param p1, "recentsView"    # Lcom/android/quickstep/views/RecentsView;
    .param p2, "v"    # F

    .line 260
    invoke-static {p1}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$fgetmAdjacentPageHorizontalOffset(Lcom/android/quickstep/views/RecentsView;)F

    move-result v0

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_0

    .line 261
    invoke-static {p1, p2}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$fputmAdjacentPageHorizontalOffset(Lcom/android/quickstep/views/RecentsView;F)V

    .line 262
    invoke-static {p1}, Lcom/android/quickstep/views/RecentsView;->-$$Nest$mupdatePageOffsets(Lcom/android/quickstep/views/RecentsView;)V

    .line 264
    :cond_0
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 257
    check-cast p1, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/views/RecentsView$4;->setValue(Lcom/android/quickstep/views/RecentsView;F)V

    return-void
.end method
