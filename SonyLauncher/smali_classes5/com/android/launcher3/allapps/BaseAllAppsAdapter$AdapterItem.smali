.class public Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
.super Ljava/lang/Object;
.source "BaseAllAppsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/BaseAllAppsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterItem"
.end annotation


# instance fields
.field public folderInfo:Lcom/android/launcher3/model/data/FolderInfo;

.field public itemInfo:Lcom/android/launcher3/model/data/AppInfo;

.field public rowAppIndex:I

.field public rowIndex:I

.field public final viewType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "viewType"    # I

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    .line 124
    iput-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->folderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    .line 121
    iput p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    .line 122
    return-void
.end method

.method public static asApp(Lcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    .locals 2
    .param p0, "appInfo"    # Lcom/android/launcher3/model/data/AppInfo;

    .line 129
    new-instance v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;-><init>(I)V

    .line 130
    .local v0, "item":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    iput-object p0, v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    .line 131
    return-object v0
.end method

.method public static asFolder(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    .locals 2
    .param p0, "folderInfo"    # Lcom/android/launcher3/model/data/FolderInfo;

    .line 139
    new-instance v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;-><init>(I)V

    .line 140
    .local v0, "item":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    iput-object p0, v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->folderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    .line 141
    return-object v0
.end method


# virtual methods
.method public isContentSame(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;)Z
    .locals 1
    .param p1, "other"    # Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    .line 156
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isCountedForAccessibility()Z
    .locals 2

    .line 135
    iget v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSameAs(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;)Z
    .locals 2
    .param p1, "other"    # Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    .line 148
    iget v0, p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    iget v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
