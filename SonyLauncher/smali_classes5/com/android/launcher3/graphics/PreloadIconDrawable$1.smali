.class Lcom/android/launcher3/graphics/PreloadIconDrawable$1;
.super Landroid/util/Property;
.source "PreloadIconDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/graphics/PreloadIconDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/android/launcher3/graphics/PreloadIconDrawable;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "arg1"    # Ljava/lang/String;

    .line 51
    .local p1, "arg0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Float;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/graphics/PreloadIconDrawable;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Lcom/android/launcher3/graphics/PreloadIconDrawable;

    .line 54
    invoke-static {p1}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->-$$Nest$fgetmInternalStateProgress(Lcom/android/launcher3/graphics/PreloadIconDrawable;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 51
    check-cast p1, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/graphics/PreloadIconDrawable$1;->get(Lcom/android/launcher3/graphics/PreloadIconDrawable;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/android/launcher3/graphics/PreloadIconDrawable;Ljava/lang/Float;)V
    .locals 1
    .param p1, "object"    # Lcom/android/launcher3/graphics/PreloadIconDrawable;
    .param p2, "value"    # Ljava/lang/Float;

    .line 59
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->-$$Nest$msetInternalProgress(Lcom/android/launcher3/graphics/PreloadIconDrawable;F)V

    .line 60
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p1, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/graphics/PreloadIconDrawable$1;->set(Lcom/android/launcher3/graphics/PreloadIconDrawable;Ljava/lang/Float;)V

    return-void
.end method
