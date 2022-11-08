.class public abstract Lcom/android/launcher3/allapps/BaseAdapterProvider;
.super Ljava/lang/Object;
.source "BaseAdapterProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemsPerRow(II)I
    .locals 0
    .param p1, "viewType"    # I
    .param p2, "appsPerRow"    # I

    .line 53
    return p2
.end method

.method public getSupportedItemsPerRowArray()[I
    .locals 1

    .line 46
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public abstract isViewSupported(I)Z
.end method

.method public abstract onBindView(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;I)V
.end method

.method public abstract onCreateViewHolder(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;
.end method
