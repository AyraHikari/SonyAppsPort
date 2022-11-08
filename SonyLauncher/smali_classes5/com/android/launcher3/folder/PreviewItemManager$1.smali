.class Lcom/android/launcher3/folder/PreviewItemManager$1;
.super Landroid/util/FloatProperty;
.source "PreviewItemManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/PreviewItemManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/launcher3/folder/PreviewItemManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/folder/PreviewItemManager;)Ljava/lang/Float;
    .locals 1
    .param p1, "manager"    # Lcom/android/launcher3/folder/PreviewItemManager;

    .line 74
    invoke-static {p1}, Lcom/android/launcher3/folder/PreviewItemManager;->-$$Nest$fgetmCurrentPageItemsTransX(Lcom/android/launcher3/folder/PreviewItemManager;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 65
    check-cast p1, Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/PreviewItemManager$1;->get(Lcom/android/launcher3/folder/PreviewItemManager;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/android/launcher3/folder/PreviewItemManager;F)V
    .locals 0
    .param p1, "manager"    # Lcom/android/launcher3/folder/PreviewItemManager;
    .param p2, "v"    # F

    .line 68
    invoke-static {p1, p2}, Lcom/android/launcher3/folder/PreviewItemManager;->-$$Nest$fputmCurrentPageItemsTransX(Lcom/android/launcher3/folder/PreviewItemManager;F)V

    .line 69
    invoke-virtual {p1}, Lcom/android/launcher3/folder/PreviewItemManager;->onParamsChanged()V

    .line 70
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 65
    check-cast p1, Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/PreviewItemManager$1;->setValue(Lcom/android/launcher3/folder/PreviewItemManager;F)V

    return-void
.end method
