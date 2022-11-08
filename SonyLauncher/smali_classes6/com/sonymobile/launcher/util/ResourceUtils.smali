.class public Lcom/sonymobile/launcher/util/ResourceUtils;
.super Ljava/lang/Object;
.source "ResourceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNullResource(Landroid/content/res/Resources;I)Z
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .line 21
    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 22
    .local v1, "value":Landroid/util/TypedValue;
    invoke-virtual {p0, p1, v1, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 23
    iget v2, v1, Landroid/util/TypedValue;->type:I

    if-ne v2, v0, :cond_0

    iget v2, v1, Landroid/util/TypedValue;->data:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 24
    .end local v1    # "value":Landroid/util/TypedValue;
    :catch_0
    move-exception v1

    .line 26
    .local v1, "ignored":Landroid/content/res/Resources$NotFoundException;
    return v0
.end method
