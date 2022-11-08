.class Lcom/android/launcher3/graphics/SysUiScrim$2;
.super Landroid/util/FloatProperty;
.source "SysUiScrim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/graphics/SysUiScrim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/launcher3/graphics/SysUiScrim;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/graphics/SysUiScrim;)Ljava/lang/Float;
    .locals 1
    .param p1, "scrim"    # Lcom/android/launcher3/graphics/SysUiScrim;

    .line 75
    invoke-static {p1}, Lcom/android/launcher3/graphics/SysUiScrim;->-$$Nest$fgetmSysUiAnimMultiplier(Lcom/android/launcher3/graphics/SysUiScrim;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 72
    check-cast p1, Lcom/android/launcher3/graphics/SysUiScrim;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/graphics/SysUiScrim$2;->get(Lcom/android/launcher3/graphics/SysUiScrim;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/android/launcher3/graphics/SysUiScrim;F)V
    .locals 0
    .param p1, "scrim"    # Lcom/android/launcher3/graphics/SysUiScrim;
    .param p2, "value"    # F

    .line 80
    invoke-static {p1, p2}, Lcom/android/launcher3/graphics/SysUiScrim;->-$$Nest$fputmSysUiAnimMultiplier(Lcom/android/launcher3/graphics/SysUiScrim;F)V

    .line 81
    invoke-static {p1}, Lcom/android/launcher3/graphics/SysUiScrim;->-$$Nest$mreapplySysUiAlpha(Lcom/android/launcher3/graphics/SysUiScrim;)V

    .line 82
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 72
    check-cast p1, Lcom/android/launcher3/graphics/SysUiScrim;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/graphics/SysUiScrim$2;->setValue(Lcom/android/launcher3/graphics/SysUiScrim;F)V

    return-void
.end method
