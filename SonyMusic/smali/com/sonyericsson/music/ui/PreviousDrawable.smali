.class public Lcom/sonyericsson/music/ui/PreviousDrawable;
.super Lcom/sonyericsson/music/ui/NextDrawable;
.source "PreviousDrawable.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/ui/NextDrawable;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected drawContent(Landroid/graphics/Canvas;FFF)V
    .locals 3

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 20
    invoke-virtual {p1, v1, v2, p2, p3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 21
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sonyericsson/music/ui/NextDrawable;->drawContent(Landroid/graphics/Canvas;FFF)V

    .line 22
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method
