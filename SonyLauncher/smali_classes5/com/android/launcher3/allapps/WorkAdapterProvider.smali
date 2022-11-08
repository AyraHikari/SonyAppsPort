.class public Lcom/android/launcher3/allapps/WorkAdapterProvider;
.super Lcom/android/launcher3/allapps/BaseAdapterProvider;
.source "WorkAdapterProvider.java"


# static fields
.field public static final KEY_WORK_EDU_STEP:Ljava/lang/String; = "showed_work_profile_edu"

.field private static final VIEW_TYPE_WORK_DISABLED_CARD:I = 0x200000

.field private static final VIEW_TYPE_WORK_EDU_CARD:I = 0x100000


# instance fields
.field private mActivityContext:Lcom/android/launcher3/views/ActivityContext;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mState:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/views/ActivityContext;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "activityContext"    # Lcom/android/launcher3/views/ActivityContext;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;

    .line 46
    invoke-direct {p0}, Lcom/android/launcher3/allapps/BaseAdapterProvider;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/launcher3/allapps/WorkAdapterProvider;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    .line 48
    iput-object p2, p0, Lcom/android/launcher3/allapps/WorkAdapterProvider;->mPreferences:Landroid/content/SharedPreferences;

    .line 49
    return-void
.end method

.method private isEduSeen()Z
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkAdapterProvider;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "showed_work_profile_edu"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private setDeviceManagementResources(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewType"    # I

    .line 69
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkAdapterProvider;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v0

    .line 70
    .local v0, "cache":Lcom/android/launcher3/model/StringCache;
    if-nez v0, :cond_0

    .line 71
    return-void

    .line 73
    :cond_0
    const/high16 v1, 0x200000

    if-ne p2, v1, :cond_1

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/WorkAdapterProvider;->setWorkProfilePausedResources(Landroid/view/View;Lcom/android/launcher3/model/StringCache;)V

    goto :goto_0

    .line 76
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/WorkAdapterProvider;->setWorkProfileEduResources(Landroid/view/View;Lcom/android/launcher3/model/StringCache;)V

    .line 78
    :goto_0
    return-void
.end method

.method private setWorkProfileEduResources(Landroid/view/View;Lcom/android/launcher3/model/StringCache;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cache"    # Lcom/android/launcher3/model/StringCache;

    .line 92
    sget v0, Lcom/android/launcher3/R$id;->work_apps_paused_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 93
    .local v0, "title":Landroid/widget/TextView;
    iget-object v1, p2, Lcom/android/launcher3/model/StringCache;->workProfileEdu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method

.method private setWorkProfilePausedResources(Landroid/view/View;Lcom/android/launcher3/model/StringCache;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cache"    # Lcom/android/launcher3/model/StringCache;

    .line 81
    sget v0, Lcom/android/launcher3/R$id;->work_apps_paused_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 82
    .local v0, "title":Landroid/widget/TextView;
    iget-object v1, p2, Lcom/android/launcher3/model/StringCache;->workProfilePausedTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    sget v1, Lcom/android/launcher3/R$id;->work_apps_paused_content:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 85
    .local v1, "body":Landroid/widget/TextView;
    iget-object v2, p2, Lcom/android/launcher3/model/StringCache;->workProfilePausedDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    sget v2, Lcom/android/launcher3/R$id;->enable_work_apps:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 88
    .local v2, "button":Landroid/widget/TextView;
    iget-object v3, p2, Lcom/android/launcher3/model/StringCache;->workProfileEnableButton:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method


# virtual methods
.method public addWorkItems(Ljava/util/ArrayList;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;)I"
        }
    .end annotation

    .line 108
    .local p1, "adapterItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    iget v0, p0, Lcom/android/launcher3/allapps/WorkAdapterProvider;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 110
    new-instance v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    const/high16 v1, 0x200000

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/allapps/WorkAdapterProvider;->isEduSeen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    new-instance v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    const/high16 v1, 0x100000

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsPerRow(II)I
    .locals 1
    .param p1, "viewType"    # I
    .param p2, "appsPerRow"    # I

    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public isViewSupported(I)Z
    .locals 1
    .param p1, "viewType"    # I

    .line 127
    const/high16 v0, 0x200000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x100000

    if-ne p1, v0, :cond_0

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

.method public onBindView(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 53
    iget-object v0, p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher3/allapps/WorkEduCard;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/allapps/WorkEduCard;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/allapps/WorkEduCard;->setPosition(I)V

    .line 56
    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;
    .locals 3
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "viewType"    # I

    .line 61
    const/high16 v0, 0x200000

    if-ne p3, v0, :cond_0

    sget v0, Lcom/android/launcher3/R$layout;->work_apps_paused:I

    goto :goto_0

    .line 62
    :cond_0
    sget v0, Lcom/android/launcher3/R$layout;->work_apps_edu:I

    :goto_0
    nop

    .line 63
    .local v0, "viewId":I
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 64
    .local v1, "view":Landroid/view/View;
    invoke-direct {p0, v1, p3}, Lcom/android/launcher3/allapps/WorkAdapterProvider;->setDeviceManagementResources(Landroid/view/View;I)V

    .line 65
    new-instance v2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    invoke-direct {v2, v1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v2
.end method

.method public shouldShowWorkApps()Z
    .locals 2

    .line 101
    iget v0, p0, Lcom/android/launcher3/allapps/WorkAdapterProvider;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateCurrentState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 122
    iput p1, p0, Lcom/android/launcher3/allapps/WorkAdapterProvider;->mState:I

    .line 123
    return-void
.end method
