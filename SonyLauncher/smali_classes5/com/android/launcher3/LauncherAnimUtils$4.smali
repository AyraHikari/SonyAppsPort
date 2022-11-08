.class Lcom/android/launcher3/LauncherAnimUtils$4;
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
        "Landroid/view/ViewGroup$LayoutParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .line 106
    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/ViewGroup$LayoutParams;)Ljava/lang/Integer;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 109
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 106
    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherAnimUtils$4;->get(Landroid/view/ViewGroup$LayoutParams;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 0
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;
    .param p2, "height"    # I

    .line 114
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 115
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0

    .line 106
    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/LauncherAnimUtils$4;->setValue(Landroid/view/ViewGroup$LayoutParams;I)V

    return-void
.end method
