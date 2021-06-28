.class Lcom/sonyericsson/music/dialogs/AppPermissionsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppPermissionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/sonyericsson/music/settings/AppPermission;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/sonyericsson/music/settings/AppPermission;)V
    .locals 2

    const v0, 0x7f0c0022

    const v1, 0x7f09017d

    .line 23
    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 30
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckedTextView;

    .line 32
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/settings/AppPermission;

    .line 33
    invoke-virtual {p1}, Lcom/sonyericsson/music/settings/AppPermission;->isEnabled()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-object p2
.end method
