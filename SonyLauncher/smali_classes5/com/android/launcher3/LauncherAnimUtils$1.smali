.class Lcom/android/launcher3/LauncherAnimUtils$1;
.super Landroid/util/IntProperty;
.source "LauncherAnimUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherAnimUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/graphics/drawable/Drawable;)Ljava/lang/Integer;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 47
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherAnimUtils$1;->get(Landroid/graphics/drawable/Drawable;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "alpha"    # I

    .line 52
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 53
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0

    .line 44
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/LauncherAnimUtils$1;->setValue(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method
