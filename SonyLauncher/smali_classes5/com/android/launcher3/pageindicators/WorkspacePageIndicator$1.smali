.class Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$1;
.super Landroid/util/Property;
.source "WorkspacePageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "arg1"    # Ljava/lang/String;

    .line 65
    .local p1, "arg0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;)Ljava/lang/Integer;
    .locals 1
    .param p1, "obj"    # Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;

    .line 68
    invoke-static {p1}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->-$$Nest$fgetmLinePaint(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 65
    check-cast p1, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$1;->get(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "obj"    # Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;
    .param p2, "alpha"    # Ljava/lang/Integer;

    .line 73
    invoke-static {p1}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->-$$Nest$fgetmLinePaint(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 74
    invoke-virtual {p1}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;->invalidate()V

    .line 75
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 65
    check-cast p1, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/pageindicators/WorkspacePageIndicator$1;->set(Lcom/android/launcher3/pageindicators/WorkspacePageIndicator;Ljava/lang/Integer;)V

    return-void
.end method
