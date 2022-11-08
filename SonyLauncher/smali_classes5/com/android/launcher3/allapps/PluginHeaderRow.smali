.class public Lcom/android/launcher3/allapps/PluginHeaderRow;
.super Ljava/lang/Object;
.source "PluginHeaderRow.java"

# interfaces
.implements Lcom/android/launcher3/allapps/FloatingHeaderRow;


# instance fields
.field private final mPlugin:Lcom/android/systemui/plugins/AllAppsRow;

.field final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/plugins/AllAppsRow;Lcom/android/launcher3/allapps/FloatingHeaderView;)V
    .locals 1
    .param p1, "plugin"    # Lcom/android/systemui/plugins/AllAppsRow;
    .param p2, "parent"    # Lcom/android/launcher3/allapps/FloatingHeaderView;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/launcher3/allapps/PluginHeaderRow;->mPlugin:Lcom/android/systemui/plugins/AllAppsRow;

    .line 36
    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/AllAppsRow;->setup(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/PluginHeaderRow;->mView:Landroid/view/View;

    .line 37
    return-void
.end method


# virtual methods
.method public getExpectedHeight()I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/launcher3/allapps/PluginHeaderRow;->mPlugin:Lcom/android/systemui/plugins/AllAppsRow;

    invoke-interface {v0}, Lcom/android/systemui/plugins/AllAppsRow;->getExpectedHeight()I

    move-result v0

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 1

    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/android/launcher3/allapps/PluginHeaderRow;",
            ">;"
        }
    .end annotation

    .line 68
    const-class v0, Lcom/android/launcher3/allapps/PluginHeaderRow;

    return-object v0
.end method

.method public hasVisibleContent()Z
    .locals 1

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public setVerticalScroll(IZ)V
    .locals 2
    .param p1, "scroll"    # I
    .param p2, "isScrolledOut"    # Z

    .line 60
    iget-object v0, p0, Lcom/android/launcher3/allapps/PluginHeaderRow;->mView:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    if-nez p2, :cond_1

    .line 62
    iget-object v0, p0, Lcom/android/launcher3/allapps/PluginHeaderRow;->mView:Landroid/view/View;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 64
    :cond_1
    return-void
.end method

.method public setup(Lcom/android/launcher3/allapps/FloatingHeaderView;[Lcom/android/launcher3/allapps/FloatingHeaderRow;Z)V
    .locals 0
    .param p1, "parent"    # Lcom/android/launcher3/allapps/FloatingHeaderView;
    .param p2, "allRows"    # [Lcom/android/launcher3/allapps/FloatingHeaderRow;
    .param p3, "tabsHidden"    # Z

    .line 41
    return-void
.end method

.method public shouldDraw()Z
    .locals 1

    .line 50
    const/4 v0, 0x1

    return v0
.end method
