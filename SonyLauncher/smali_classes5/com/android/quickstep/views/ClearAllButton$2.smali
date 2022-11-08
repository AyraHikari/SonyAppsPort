.class Lcom/android/quickstep/views/ClearAllButton$2;
.super Landroid/util/FloatProperty;
.source "ClearAllButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/ClearAllButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/quickstep/views/ClearAllButton;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/quickstep/views/ClearAllButton;)Ljava/lang/Float;
    .locals 1
    .param p1, "view"    # Lcom/android/quickstep/views/ClearAllButton;

    .line 47
    invoke-static {p1}, Lcom/android/quickstep/views/ClearAllButton;->-$$Nest$fgetmDismissAlpha(Lcom/android/quickstep/views/ClearAllButton;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p1, Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/ClearAllButton$2;->get(Lcom/android/quickstep/views/ClearAllButton;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/android/quickstep/views/ClearAllButton;F)V
    .locals 0
    .param p1, "view"    # Lcom/android/quickstep/views/ClearAllButton;
    .param p2, "v"    # F

    .line 52
    invoke-virtual {p1, p2}, Lcom/android/quickstep/views/ClearAllButton;->setDismissAlpha(F)V

    .line 53
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 44
    check-cast p1, Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/views/ClearAllButton$2;->setValue(Lcom/android/quickstep/views/ClearAllButton;F)V

    return-void
.end method
