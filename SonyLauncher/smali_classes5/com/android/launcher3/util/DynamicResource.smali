.class public Lcom/android/launcher3/util/DynamicResource;
.super Ljava/lang/Object;
.source "DynamicResource.java"

# interfaces
.implements Lcom/android/systemui/plugins/ResourceProvider;
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/plugins/ResourceProvider;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/ResourceProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/util/DynamicResource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPlugin:Lcom/android/systemui/plugins/ResourceProvider;


# direct methods
.method public static synthetic $r8$lambda$H76pgZzgL_y1hqAVfGzB3i_vAOw(Landroid/content/Context;)Lcom/android/launcher3/util/DynamicResource;
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/DynamicResource;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/DynamicResource;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/launcher3/util/DynamicResource$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/launcher3/util/DynamicResource$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/util/DynamicResource;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/launcher3/util/DynamicResource;->mContext:Landroid/content/Context;

    .line 47
    sget-object v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;

    const-class v1, Lcom/android/systemui/plugins/ResourceProvider;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 49
    return-void
.end method

.method public static provider(Landroid/content/Context;)Lcom/android/systemui/plugins/ResourceProvider;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 90
    sget-object v0, Lcom/android/launcher3/util/DynamicResource;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DynamicResource;

    .line 91
    .local v0, "dr":Lcom/android/launcher3/util/DynamicResource;
    iget-object v1, v0, Lcom/android/launcher3/util/DynamicResource;->mPlugin:Lcom/android/systemui/plugins/ResourceProvider;

    .line 92
    .local v1, "plugin":Lcom/android/systemui/plugins/ResourceProvider;
    if-nez v1, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    return-object v2
.end method


# virtual methods
.method public getColor(I)I
    .locals 2
    .param p1, "resId"    # I

    .line 68
    iget-object v0, p0, Lcom/android/launcher3/util/DynamicResource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    return v0
.end method

.method public getDimension(I)F
    .locals 1
    .param p1, "resId"    # I

    .line 63
    iget-object v0, p0, Lcom/android/launcher3/util/DynamicResource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "resId"    # I

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/util/DynamicResource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getFraction(I)F
    .locals 2
    .param p1, "resId"    # I

    .line 58
    iget-object v0, p0, Lcom/android/launcher3/util/DynamicResource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "resId"    # I

    .line 53
    iget-object v0, p0, Lcom/android/launcher3/util/DynamicResource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .line 37
    check-cast p1, Lcom/android/systemui/plugins/ResourceProvider;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/util/DynamicResource;->onPluginConnected(Lcom/android/systemui/plugins/ResourceProvider;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/ResourceProvider;Landroid/content/Context;)V
    .locals 0
    .param p1, "plugin"    # Lcom/android/systemui/plugins/ResourceProvider;
    .param p2, "context"    # Landroid/content/Context;

    .line 78
    iput-object p1, p0, Lcom/android/launcher3/util/DynamicResource;->mPlugin:Lcom/android/systemui/plugins/ResourceProvider;

    .line 79
    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    .line 37
    check-cast p1, Lcom/android/systemui/plugins/ResourceProvider;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/DynamicResource;->onPluginDisconnected(Lcom/android/systemui/plugins/ResourceProvider;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/ResourceProvider;)V
    .locals 1
    .param p1, "plugin"    # Lcom/android/systemui/plugins/ResourceProvider;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/util/DynamicResource;->mPlugin:Lcom/android/systemui/plugins/ResourceProvider;

    .line 84
    return-void
.end method
