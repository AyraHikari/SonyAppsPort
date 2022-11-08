.class public abstract Landroidx/preference/PreferenceFragment;
.super Landroid/app/Fragment;
.source "PreferenceFragment.java"

# interfaces
.implements Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroidx/preference/PreferenceManager$OnDisplayPreferenceDialogListener;
.implements Landroidx/preference/PreferenceManager$OnNavigateToScreenListener;
.implements Landroidx/preference/DialogPreference$TargetFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/PreferenceFragment$DividerDecoration;,
        Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;,
        Landroidx/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;,
        Landroidx/preference/PreferenceFragment$OnPreferenceStartScreenCallback;,
        Landroidx/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ARG_PREFERENCE_ROOT:Ljava/lang/String; = "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "androidx.preference.PreferenceFragment.DIALOG"

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final PREFERENCES_TAG:Ljava/lang/String; = "android:preferences"


# instance fields
.field private final mDividerDecoration:Landroidx/preference/PreferenceFragment$DividerDecoration;

.field private final mHandler:Landroid/os/Handler;

.field private mHavePrefs:Z

.field private mInitDone:Z

.field private mLayoutResId:I

.field mList:Landroidx/recyclerview/widget/RecyclerView;

.field private mPreferenceManager:Landroidx/preference/PreferenceManager;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field private mSelectPreferenceRunnable:Ljava/lang/Runnable;

.field private mStyledContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 119
    new-instance v0, Landroidx/preference/PreferenceFragment$DividerDecoration;

    invoke-direct {v0, p0}, Landroidx/preference/PreferenceFragment$DividerDecoration;-><init>(Landroidx/preference/PreferenceFragment;)V

    iput-object v0, p0, Landroidx/preference/PreferenceFragment;->mDividerDecoration:Landroidx/preference/PreferenceFragment$DividerDecoration;

    .line 125
    sget v0, Landroidx/preference/R$layout;->preference_list_fragment:I

    iput v0, p0, Landroidx/preference/PreferenceFragment;->mLayoutResId:I

    .line 128
    new-instance v0, Landroidx/preference/PreferenceFragment$1;

    invoke-direct {v0, p0}, Landroidx/preference/PreferenceFragment$1;-><init>(Landroidx/preference/PreferenceFragment;)V

    iput-object v0, p0, Landroidx/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    .line 140
    new-instance v0, Landroidx/preference/PreferenceFragment$2;

    invoke-direct {v0, p0}, Landroidx/preference/PreferenceFragment$2;-><init>(Landroidx/preference/PreferenceFragment;)V

    iput-object v0, p0, Landroidx/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    return-void
.end method

.method private postBindPreferences()V
    .locals 2

    .line 496
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 497
    :cond_0
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 498
    return-void
.end method

.method private requirePreferenceManager()V
    .locals 2

    .line 490
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 493
    return-void

    .line 491
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private scrollToPreferenceInternal(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 2
    .param p1, "preference"    # Landroidx/preference/Preference;
    .param p2, "key"    # Ljava/lang/String;

    .line 671
    new-instance v0, Landroidx/preference/PreferenceFragment$3;

    invoke-direct {v0, p0, p1, p2}, Landroidx/preference/PreferenceFragment$3;-><init>(Landroidx/preference/PreferenceFragment;Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 701
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Landroidx/preference/PreferenceFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_0

    .line 702
    iput-object v0, p0, Landroidx/preference/PreferenceFragment;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 704
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 706
    :goto_0
    return-void
.end method

.method private unbindPreferences()V
    .locals 1

    .line 510
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 511
    .local v0, "preferenceScreen":Landroidx/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->onDetached()V

    .line 514
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->onUnbindPreferences()V

    .line 515
    return-void
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .locals 3
    .param p1, "preferencesResId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 385
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;->requirePreferenceManager()V

    .line 387
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    iget-object v1, p0, Landroidx/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    .line 388
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    .line 387
    invoke-virtual {v0, v1, p1, v2}, Landroidx/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 389
    return-void
.end method

.method bindPreferences()V
    .locals 3

    .line 501
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 502
    .local v0, "preferenceScreen":Landroidx/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragment;->onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 504
    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->onAttached()V

    .line 506
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->onBindPreferences()V

    .line 507
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/preference/Preference;",
            ">(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 483
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 484
    const/4 v0, 0x0

    return-object v0

    .line 486
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public getCallbackFragment()Landroid/app/Fragment;
    .locals 1

    .line 651
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getListView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 530
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public getPreferenceManager()Landroidx/preference/PreferenceManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 342
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Landroidx/preference/PreferenceScreen;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 372
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected onBindPreferences()V
    .locals 0

    .line 519
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 149
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 150
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 151
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroidx/preference/R$attr;->preferenceTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 152
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 153
    .local v1, "theme":I
    if-nez v1, :cond_0

    .line 155
    sget v1, Landroidx/preference/R$style;->PreferenceThemeOverlay:I

    .line 157
    :cond_0
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroidx/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    .line 159
    new-instance v3, Landroidx/preference/PreferenceManager;

    invoke-direct {v3, v2}, Landroidx/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 160
    invoke-virtual {v3, p0}, Landroidx/preference/PreferenceManager;->setOnNavigateToScreenListener(Landroidx/preference/PreferenceManager$OnNavigateToScreenListener;)V

    .line 161
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 163
    .local v2, "args":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 164
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "rootKey":Ljava/lang/String;
    goto :goto_0

    .line 166
    .end local v3    # "rootKey":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .line 168
    .restart local v3    # "rootKey":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1, v3}, Landroidx/preference/PreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method protected onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1
    .param p1, "preferenceScreen"    # Landroidx/preference/PreferenceScreen;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 593
    new-instance v0, Landroidx/preference/PreferenceGroupAdapter;

    invoke-direct {v0, p1}, Landroidx/preference/PreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;)V

    return-object v0
.end method

.method public onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 580
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 553
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    sget v0, Landroidx/preference/R$id;->recycler_view:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 556
    .local v0, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v0, :cond_0

    .line 557
    return-object v0

    .line 560
    .end local v0    # "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    :cond_0
    sget v0, Landroidx/preference/R$layout;->preference_recyclerview:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 563
    .restart local v0    # "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 564
    new-instance v1, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;

    invoke-direct {v1, v0}, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;)V

    .line 567
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 190
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    sget-object v1, Landroidx/preference/R$styleable;->PreferenceFragment:[I

    iget-object v2, p0, Landroidx/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    sget v3, Landroidx/preference/R$attr;->preferenceFragmentStyle:I

    .line 192
    const v4, 0x1010506

    invoke-static {v2, v3, v4}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v2

    .line 190
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 195
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroidx/preference/R$styleable;->PreferenceFragment_android_layout:I

    iget v2, p0, Landroidx/preference/PreferenceFragment;->mLayoutResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/preference/PreferenceFragment;->mLayoutResId:I

    .line 197
    sget v1, Landroidx/preference/R$styleable;->PreferenceFragment_android_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 198
    .local v1, "divider":Landroid/graphics/drawable/Drawable;
    sget v2, Landroidx/preference/R$styleable;->PreferenceFragment_android_dividerHeight:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 200
    .local v2, "dividerHeight":I
    sget v5, Landroidx/preference/R$styleable;->PreferenceFragment_allowDividerAfterLastItem:I

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 202
    .local v5, "allowDividerAfterLastItem":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 204
    iget-object v6, p0, Landroidx/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    invoke-virtual {p1, v6}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 206
    .local v6, "themedInflater":Landroid/view/LayoutInflater;
    iget v7, p0, Landroidx/preference/PreferenceFragment;->mLayoutResId:I

    invoke-virtual {v6, v7, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 208
    .local v4, "view":Landroid/view/View;
    const v7, 0x102003f

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 209
    .local v7, "rawListContainer":Landroid/view/View;
    instance-of v8, v7, Landroid/view/ViewGroup;

    if-eqz v8, :cond_3

    .line 214
    move-object v8, v7

    check-cast v8, Landroid/view/ViewGroup;

    .line 216
    .local v8, "listContainer":Landroid/view/ViewGroup;
    invoke-virtual {p0, v6, v8, p3}, Landroidx/preference/PreferenceFragment;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v9

    .line 218
    .local v9, "listView":Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v9, :cond_2

    .line 222
    iput-object v9, p0, Landroidx/preference/PreferenceFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 224
    iget-object v10, p0, Landroidx/preference/PreferenceFragment;->mDividerDecoration:Landroidx/preference/PreferenceFragment$DividerDecoration;

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 225
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragment;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 226
    if-eq v2, v3, :cond_0

    .line 227
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragment;->setDividerHeight(I)V

    .line 229
    :cond_0
    iget-object v3, p0, Landroidx/preference/PreferenceFragment;->mDividerDecoration:Landroidx/preference/PreferenceFragment$DividerDecoration;

    invoke-virtual {v3, v5}, Landroidx/preference/PreferenceFragment$DividerDecoration;->setAllowDividerAfterLastItem(Z)V

    .line 233
    iget-object v3, p0, Landroidx/preference/PreferenceFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_1

    .line 234
    iget-object v3, p0, Landroidx/preference/PreferenceFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 236
    :cond_1
    iget-object v3, p0, Landroidx/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Landroidx/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v3, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    return-object v4

    .line 219
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v10, "Could not create RecyclerView"

    invoke-direct {v3, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 210
    .end local v8    # "listContainer":Landroid/view/ViewGroup;
    .end local v9    # "listView":Landroidx/recyclerview/widget/RecyclerView;
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v8, "Content has view with id attribute \'android.R.id.list_container\' that is not a ViewGroup class"

    invoke-direct {v3, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onDestroyView()V
    .locals 2

    .line 312
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 313
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 314
    iget-boolean v0, p0, Landroidx/preference/PreferenceFragment;->mHavePrefs:Z

    if-eqz v0, :cond_0

    .line 315
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;->unbindPreferences()V

    .line 317
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/preference/PreferenceFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 318
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 319
    return-void
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 4
    .param p1, "preference"    # Landroidx/preference/Preference;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 609
    const/4 v0, 0x0

    .line 610
    .local v0, "handled":Z
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Landroidx/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;

    if-eqz v1, :cond_0

    .line 611
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;

    .line 612
    invoke-interface {v1, p0, p1}, Landroidx/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Landroidx/preference/PreferenceFragment;Landroidx/preference/Preference;)Z

    move-result v0

    .line 614
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroidx/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;

    if-eqz v1, :cond_1

    .line 615
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;

    .line 616
    invoke-interface {v1, p0, p1}, Landroidx/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Landroidx/preference/PreferenceFragment;Landroidx/preference/Preference;)Z

    move-result v0

    .line 619
    :cond_1
    if-eqz v0, :cond_2

    .line 620
    return-void

    .line 624
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 625
    return-void

    .line 629
    :cond_3
    instance-of v1, p1, Landroidx/preference/EditTextPreference;

    if-eqz v1, :cond_4

    .line 630
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/preference/EditTextPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Landroidx/preference/EditTextPreferenceDialogFragment;

    move-result-object v1

    .local v1, "f":Landroid/app/DialogFragment;
    goto :goto_0

    .line 631
    .end local v1    # "f":Landroid/app/DialogFragment;
    :cond_4
    instance-of v1, p1, Landroidx/preference/ListPreference;

    if-eqz v1, :cond_5

    .line 632
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/preference/ListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Landroidx/preference/ListPreferenceDialogFragment;

    move-result-object v1

    .restart local v1    # "f":Landroid/app/DialogFragment;
    goto :goto_0

    .line 633
    .end local v1    # "f":Landroid/app/DialogFragment;
    :cond_5
    instance-of v1, p1, Landroidx/preference/MultiSelectListPreference;

    if-eqz v1, :cond_6

    .line 634
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Landroidx/preference/MultiSelectListPreferenceDialogFragment;

    move-result-object v1

    .line 639
    .restart local v1    # "f":Landroid/app/DialogFragment;
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 640
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 641
    return-void

    .line 636
    .end local v1    # "f":Landroid/app/DialogFragment;
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Tried to display dialog for unknown preference type. Did you forget to override onDisplayPreferenceDialog()?"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onNavigateToScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "preferenceScreen"    # Landroidx/preference/PreferenceScreen;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 459
    const/4 v0, 0x0

    .line 460
    .local v0, "handled":Z
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Landroidx/preference/PreferenceFragment$OnPreferenceStartScreenCallback;

    if-eqz v1, :cond_0

    .line 461
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceFragment$OnPreferenceStartScreenCallback;

    .line 462
    invoke-interface {v1, p0, p1}, Landroidx/preference/PreferenceFragment$OnPreferenceStartScreenCallback;->onPreferenceStartScreen(Landroidx/preference/PreferenceFragment;Landroidx/preference/PreferenceScreen;)Z

    move-result v0

    .line 464
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroidx/preference/PreferenceFragment$OnPreferenceStartScreenCallback;

    if-eqz v1, :cond_1

    .line 465
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceFragment$OnPreferenceStartScreenCallback;

    .line 466
    invoke-interface {v1, p0, p1}, Landroidx/preference/PreferenceFragment$OnPreferenceStartScreenCallback;->onPreferenceStartScreen(Landroidx/preference/PreferenceFragment;Landroidx/preference/PreferenceScreen;)Z

    .line 468
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroidx/preference/Preference;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 430
    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, "handled":Z
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Landroidx/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    if-eqz v1, :cond_0

    .line 433
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    .line 434
    invoke-interface {v1, p0, p1}, Landroidx/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Landroidx/preference/PreferenceFragment;Landroidx/preference/Preference;)Z

    move-result v0

    .line 436
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroidx/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    if-eqz v1, :cond_1

    .line 437
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    .line 438
    invoke-interface {v1, p0, p1}, Landroidx/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Landroidx/preference/PreferenceFragment;Landroidx/preference/Preference;)Z

    move-result v0

    .line 440
    :cond_1
    return v0

    .line 442
    .end local v0    # "handled":Z
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 323
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 325
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 326
    .local v0, "preferenceScreen":Landroidx/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 327
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 328
    .local v1, "container":Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 329
    const-string v2, "android:preferences"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 331
    .end local v1    # "container":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 298
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 299
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 300
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceManager;->setOnDisplayPreferenceDialogListener(Landroidx/preference/PreferenceManager$OnDisplayPreferenceDialogListener;)V

    .line 301
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 305
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 306
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 307
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->setOnDisplayPreferenceDialogListener(Landroidx/preference/PreferenceManager$OnDisplayPreferenceDialogListener;)V

    .line 308
    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    .line 523
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 273
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 275
    if-eqz p2, :cond_0

    .line 276
    const-string v0, "android:preferences"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 277
    .local v0, "container":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    .line 279
    .local v1, "preferenceScreen":Landroidx/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 285
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v1    # "preferenceScreen":Landroidx/preference/PreferenceScreen;
    :cond_0
    iget-boolean v0, p0, Landroidx/preference/PreferenceFragment;->mHavePrefs:Z

    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->bindPreferences()V

    .line 287
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 288
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/preference/PreferenceFragment;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    .line 293
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/PreferenceFragment;->mInitDone:Z

    .line 294
    return-void
.end method

.method public scrollToPreference(Landroidx/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroidx/preference/Preference;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 667
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/PreferenceFragment;->scrollToPreferenceInternal(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 668
    return-void
.end method

.method public scrollToPreference(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 659
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroidx/preference/PreferenceFragment;->scrollToPreferenceInternal(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 660
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 254
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mDividerDecoration:Landroidx/preference/PreferenceFragment$DividerDecoration;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceFragment$DividerDecoration;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 255
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1
    .param p1, "height"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 268
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mDividerDecoration:Landroidx/preference/PreferenceFragment$DividerDecoration;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceFragment$DividerDecoration;->setDividerHeight(I)V

    .line 269
    return-void
.end method

.method public setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "preferenceScreen"    # Landroidx/preference/PreferenceScreen;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 354
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceManager;->setPreferences(Landroidx/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 355
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->onUnbindPreferences()V

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/PreferenceFragment;->mHavePrefs:Z

    .line 357
    iget-boolean v0, p0, Landroidx/preference/PreferenceFragment;->mInitDone:Z

    if-eqz v0, :cond_0

    .line 358
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;->postBindPreferences()V

    .line 361
    :cond_0
    return-void
.end method

.method public setPreferencesFromResource(ILjava/lang/String;)V
    .locals 5
    .param p1, "preferencesResId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 404
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;->requirePreferenceManager()V

    .line 406
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    iget-object v1, p0, Landroidx/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroidx/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 410
    .local v0, "xmlRoot":Landroidx/preference/PreferenceScreen;
    if-eqz p2, :cond_1

    .line 411
    invoke-virtual {v0, p2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 412
    .local v1, "root":Landroidx/preference/Preference;
    instance-of v2, v1, Landroidx/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 413
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preference object with key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a PreferenceScreen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 417
    .end local v1    # "root":Landroidx/preference/Preference;
    :cond_1
    move-object v1, v0

    .line 420
    .restart local v1    # "root":Landroidx/preference/Preference;
    :goto_0
    move-object v2, v1

    check-cast v2, Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 421
    return-void
.end method
