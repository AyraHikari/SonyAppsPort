.class public Lcom/android/launcher3/util/TranslateEdgeEffect;
.super Lcom/android/launcher3/util/EdgeEffectCompat;
.source "TranslateEdgeEffect.java"


# instance fields
.field private final mNode:Landroid/graphics/RenderNode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Landroid/graphics/RenderNode;

    const-string v1, "TranslateEdgeEffect"

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher3/util/TranslateEdgeEffect;->mNode:Landroid/graphics/RenderNode;

    .line 35
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public getTranslationShift([F)Z
    .locals 4
    .param p1, "out"    # [F

    .line 43
    iget-object v0, p0, Lcom/android/launcher3/util/TranslateEdgeEffect;->mNode:Landroid/graphics/RenderNode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v0

    .line 44
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-super {p0, v0}, Lcom/android/launcher3/util/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    .line 45
    .local v1, "result":Z
    iget-object v2, p0, Lcom/android/launcher3/util/TranslateEdgeEffect;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2}, Landroid/graphics/RenderNode;->endRecording()V

    .line 47
    invoke-virtual {p0}, Lcom/android/launcher3/util/TranslateEdgeEffect;->getDistance()F

    move-result v2

    const/4 v3, 0x0

    aput v2, p1, v3

    .line 48
    return v1
.end method
