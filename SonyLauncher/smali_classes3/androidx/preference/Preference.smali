.class public Landroidx/preference/Preference;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/Preference$OnPreferenceCopyListener;,
        Landroidx/preference/Preference$BaseSavedState;,
        Landroidx/preference/Preference$SummaryProvider;,
        Landroidx/preference/Preference$OnPreferenceChangeInternalListener;,
        Landroidx/preference/Preference$OnPreferenceClickListener;,
        Landroidx/preference/Preference$OnPreferenceChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/preference/Preference;",
        ">;"
    }
.end annotation


# static fields
.field private static final CLIPBOARD_ID:Ljava/lang/String; = "Preference"

.field public static final DEFAULT_ORDER:I = 0x7fffffff


# instance fields
.field private mAllowDividerAbove:Z

.field private mAllowDividerBelow:Z

.field private mBaseMethodCalled:Z

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mCopyingEnabled:Z

.field private mDefaultValue:Ljava/lang/Object;

.field private mDependencyKey:Ljava/lang/String;

.field private mDependencyMet:Z

.field private mDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFragment:Ljava/lang/String;

.field private mHasId:Z

.field private mHasSingleLineTitleAttr:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mIconSpaceReserved:Z

.field private mId:J

.field private mIntent:Landroid/content/Intent;

.field private mKey:Ljava/lang/String;

.field private mLayoutResId:I

.field private mListener:Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

.field private mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field private mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

.field private mOnCopyListener:Landroidx/preference/Preference$OnPreferenceCopyListener;

.field private mOrder:I

.field private mParentDependencyMet:Z

.field private mParentGroup:Landroidx/preference/PreferenceGroup;

.field private mPersistent:Z

.field private mPreferenceDataStore:Landroidx/preference/PreferenceDataStore;

.field private mPreferenceManager:Landroidx/preference/PreferenceManager;

.field private mRequiresKey:Z

.field private mSelectable:Z

.field private mShouldDisableView:Z

.field private mSingleLineTitle:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mSummaryProvider:Landroidx/preference/Preference$SummaryProvider;

.field private mTitle:Ljava/lang/CharSequence;

.field private mViewId:I

.field private mVisible:Z

.field private mWasDetached:Z

.field private mWidgetLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 323
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 324
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 312
    sget v0, Landroidx/preference/R$attr;->preferenceStyle:I

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 314
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 297
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 298
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const v0, 0x7fffffff

    iput v0, p0, Landroidx/preference/Preference;->mOrder:I

    .line 128
    const/4 v1, 0x0

    iput v1, p0, Landroidx/preference/Preference;->mViewId:I

    .line 141
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/preference/Preference;->mEnabled:Z

    .line 142
    iput-boolean v2, p0, Landroidx/preference/Preference;->mSelectable:Z

    .line 144
    iput-boolean v2, p0, Landroidx/preference/Preference;->mPersistent:Z

    .line 147
    iput-boolean v2, p0, Landroidx/preference/Preference;->mDependencyMet:Z

    .line 148
    iput-boolean v2, p0, Landroidx/preference/Preference;->mParentDependencyMet:Z

    .line 149
    iput-boolean v2, p0, Landroidx/preference/Preference;->mVisible:Z

    .line 151
    iput-boolean v2, p0, Landroidx/preference/Preference;->mAllowDividerAbove:Z

    .line 152
    iput-boolean v2, p0, Landroidx/preference/Preference;->mAllowDividerBelow:Z

    .line 154
    iput-boolean v2, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    .line 161
    iput-boolean v2, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    .line 163
    sget v3, Landroidx/preference/R$layout;->preference:I

    iput v3, p0, Landroidx/preference/Preference;->mLayoutResId:I

    .line 178
    new-instance v3, Landroidx/preference/Preference$1;

    invoke-direct {v3, p0}, Landroidx/preference/Preference$1;-><init>(Landroidx/preference/Preference;)V

    iput-object v3, p0, Landroidx/preference/Preference;->mClickListener:Landroid/view/View$OnClickListener;

    .line 205
    iput-object p1, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 207
    sget-object v3, Landroidx/preference/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 210
    .local v3, "a":Landroid/content/res/TypedArray;
    sget v4, Landroidx/preference/R$styleable;->Preference_icon:I

    sget v5, Landroidx/preference/R$styleable;->Preference_android_icon:I

    invoke-static {v3, v4, v5, v1}, Landroidx/core/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result v4

    iput v4, p0, Landroidx/preference/Preference;->mIconResId:I

    .line 213
    sget v4, Landroidx/preference/R$styleable;->Preference_key:I

    sget v5, Landroidx/preference/R$styleable;->Preference_android_key:I

    invoke-static {v3, v4, v5}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 216
    sget v4, Landroidx/preference/R$styleable;->Preference_title:I

    sget v5, Landroidx/preference/R$styleable;->Preference_android_title:I

    invoke-static {v3, v4, v5}, Landroidx/core/content/res/TypedArrayUtils;->getText(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 219
    sget v4, Landroidx/preference/R$styleable;->Preference_summary:I

    sget v5, Landroidx/preference/R$styleable;->Preference_android_summary:I

    invoke-static {v3, v4, v5}, Landroidx/core/content/res/TypedArrayUtils;->getText(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 222
    sget v4, Landroidx/preference/R$styleable;->Preference_order:I

    sget v5, Landroidx/preference/R$styleable;->Preference_android_order:I

    invoke-static {v3, v4, v5, v0}, Landroidx/core/content/res/TypedArrayUtils;->getInt(Landroid/content/res/TypedArray;III)I

    move-result v0

    iput v0, p0, Landroidx/preference/Preference;->mOrder:I

    .line 225
    sget v0, Landroidx/preference/R$styleable;->Preference_fragment:I

    sget v4, Landroidx/preference/R$styleable;->Preference_android_fragment:I

    invoke-static {v3, v0, v4}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/Preference;->mFragment:Ljava/lang/String;

    .line 228
    sget v0, Landroidx/preference/R$styleable;->Preference_layout:I

    sget v4, Landroidx/preference/R$styleable;->Preference_android_layout:I

    sget v5, Landroidx/preference/R$layout;->preference:I

    invoke-static {v3, v0, v4, v5}, Landroidx/core/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result v0

    iput v0, p0, Landroidx/preference/Preference;->mLayoutResId:I

    .line 231
    sget v0, Landroidx/preference/R$styleable;->Preference_widgetLayout:I

    sget v4, Landroidx/preference/R$styleable;->Preference_android_widgetLayout:I

    invoke-static {v3, v0, v4, v1}, Landroidx/core/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result v0

    iput v0, p0, Landroidx/preference/Preference;->mWidgetLayoutResId:I

    .line 234
    sget v0, Landroidx/preference/R$styleable;->Preference_enabled:I

    sget v4, Landroidx/preference/R$styleable;->Preference_android_enabled:I

    invoke-static {v3, v0, v4, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/preference/Preference;->mEnabled:Z

    .line 237
    sget v0, Landroidx/preference/R$styleable;->Preference_selectable:I

    sget v4, Landroidx/preference/R$styleable;->Preference_android_selectable:I

    invoke-static {v3, v0, v4, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/preference/Preference;->mSelectable:Z

    .line 240
    sget v0, Landroidx/preference/R$styleable;->Preference_persistent:I

    sget v4, Landroidx/preference/R$styleable;->Preference_android_persistent:I

    invoke-static {v3, v0, v4, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/preference/Preference;->mPersistent:Z

    .line 243
    sget v0, Landroidx/preference/R$styleable;->Preference_dependency:I

    sget v4, Landroidx/preference/R$styleable;->Preference_android_dependency:I

    invoke-static {v3, v0, v4}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 246
    sget v0, Landroidx/preference/R$styleable;->Preference_allowDividerAbove:I

    sget v4, Landroidx/preference/R$styleable;->Preference_allowDividerAbove:I

    iget-boolean v5, p0, Landroidx/preference/Preference;->mSelectable:Z

    invoke-static {v3, v0, v4, v5}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/preference/Preference;->mAllowDividerAbove:Z

    .line 249
    sget v0, Landroidx/preference/R$styleable;->Preference_allowDividerBelow:I

    sget v4, Landroidx/preference/R$styleable;->Preference_allowDividerBelow:I

    iget-boolean v5, p0, Landroidx/preference/Preference;->mSelectable:Z

    invoke-static {v3, v0, v4, v5}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/preference/Preference;->mAllowDividerBelow:Z

    .line 252
    sget v0, Landroidx/preference/R$styleable;->Preference_defaultValue:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    sget v0, Landroidx/preference/R$styleable;->Preference_defaultValue:I

    invoke-virtual {p0, v3, v0}, Landroidx/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    goto :goto_0

    .line 254
    :cond_0
    sget v0, Landroidx/preference/R$styleable;->Preference_android_defaultValue:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    sget v0, Landroidx/preference/R$styleable;->Preference_android_defaultValue:I

    invoke-virtual {p0, v3, v0}, Landroidx/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    .line 258
    :cond_1
    :goto_0
    sget v0, Landroidx/preference/R$styleable;->Preference_shouldDisableView:I

    sget v4, Landroidx/preference/R$styleable;->Preference_android_shouldDisableView:I

    .line 259
    invoke-static {v3, v0, v4, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    .line 262
    sget v0, Landroidx/preference/R$styleable;->Preference_singleLineTitle:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/preference/Preference;->mHasSingleLineTitleAttr:Z

    .line 263
    if-eqz v0, :cond_2

    .line 264
    sget v0, Landroidx/preference/R$styleable;->Preference_singleLineTitle:I

    sget v4, Landroidx/preference/R$styleable;->Preference_android_singleLineTitle:I

    invoke-static {v3, v0, v4, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    .line 268
    :cond_2
    sget v0, Landroidx/preference/R$styleable;->Preference_iconSpaceReserved:I

    sget v4, Landroidx/preference/R$styleable;->Preference_android_iconSpaceReserved:I

    invoke-static {v3, v0, v4, v1}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    .line 271
    sget v0, Landroidx/preference/R$styleable;->Preference_isPreferenceVisible:I

    sget v4, Landroidx/preference/R$styleable;->Preference_isPreferenceVisible:I

    invoke-static {v3, v0, v4, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/preference/Preference;->mVisible:Z

    .line 274
    sget v0, Landroidx/preference/R$styleable;->Preference_enableCopying:I

    sget v2, Landroidx/preference/R$styleable;->Preference_enableCopying:I

    invoke-static {v3, v0, v2, v1}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/preference/Preference;->mCopyingEnabled:Z

    .line 277
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 278
    return-void
.end method

.method private dispatchSetInitialValue()V
    .locals 4

    .line 1577
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1578
    iget-object v0, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Landroidx/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 1579
    return-void

    .line 1583
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    .line 1584
    .local v0, "shouldPersist":Z
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1589
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroidx/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_1

    .line 1585
    :cond_2
    :goto_0
    iget-object v1, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 1586
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroidx/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 1591
    :cond_3
    :goto_1
    return-void
.end method

.method private registerDependency()V
    .locals 4

    .line 1389
    iget-object v0, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1391
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    .line 1392
    .local v0, "preference":Landroidx/preference/Preference;
    if-eqz v0, :cond_1

    .line 1393
    invoke-direct {v0, p0}, Landroidx/preference/Preference;->registerDependent(Landroidx/preference/Preference;)V

    .line 1398
    return-void

    .line 1395
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dependency \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" not found for preference \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" (title: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private registerDependent(Landroidx/preference/Preference;)V
    .locals 1
    .param p1, "dependent"    # Landroidx/preference/Preference;

    .line 1438
    iget-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    .line 1442
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1444
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroidx/preference/Preference;->onDependencyChanged(Landroidx/preference/Preference;Z)V

    .line 1445
    return-void
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .line 601
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 603
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 604
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 605
    .local v0, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 606
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Landroidx/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 605
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 609
    .end local v0    # "vg":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private tryCommit(Landroid/content/SharedPreferences$Editor;)V
    .locals 1
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .line 1633
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->shouldCommit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1634
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1636
    :cond_0
    return-void
.end method

.method private unregisterDependency()V
    .locals 1

    .line 1401
    iget-object v0, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1402
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    .line 1403
    .local v0, "oldDependency":Landroidx/preference/Preference;
    if-eqz v0, :cond_0

    .line 1404
    invoke-direct {v0, p0}, Landroidx/preference/Preference;->unregisterDependent(Landroidx/preference/Preference;)V

    .line 1407
    .end local v0    # "oldDependency":Landroidx/preference/Preference;
    :cond_0
    return-void
.end method

.method private unregisterDependent(Landroidx/preference/Preference;)V
    .locals 1
    .param p1, "dependent"    # Landroidx/preference/Preference;

    .line 1454
    iget-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1455
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1457
    :cond_0
    return-void
.end method


# virtual methods
.method assignParent(Landroidx/preference/PreferenceGroup;)V
    .locals 2
    .param p1, "parentGroup"    # Landroidx/preference/PreferenceGroup;

    .line 1343
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/preference/Preference;->mParentGroup:Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1344
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This preference already has a parent. You must remove the existing parent before assigning a new one."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1348
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/preference/Preference;->mParentGroup:Landroidx/preference/PreferenceGroup;

    .line 1349
    return-void
.end method

.method public callChangeListener(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    .line 1120
    iget-object v0, p0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method final clearWasDetached()V
    .locals 1

    .line 1384
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/preference/Preference;->mWasDetached:Z

    .line 1385
    return-void
.end method

.method public compareTo(Landroidx/preference/Preference;)I
    .locals 2
    .param p1, "another"    # Landroidx/preference/Preference;

    .line 1246
    iget v0, p0, Landroidx/preference/Preference;->mOrder:I

    iget v1, p1, Landroidx/preference/Preference;->mOrder:I

    if-eq v0, v1, :cond_0

    .line 1248
    sub-int/2addr v0, v1

    return v0

    .line 1249
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_1

    .line 1251
    const/4 v0, 0x0

    return v0

    .line 1252
    :cond_1
    if-nez v0, :cond_2

    .line 1253
    const/4 v0, 0x1

    return v0

    .line 1254
    :cond_2
    if-nez v1, :cond_3

    .line 1255
    const/4 v0, -0x1

    return v0

    .line 1258
    :cond_3
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 91
    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result p1

    return p1
.end method

.method dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .line 2063
    invoke-virtual {p0}, Landroidx/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2064
    iget-object v0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 2065
    .local v0, "state":Landroid/os/Parcelable;
    if-eqz v0, :cond_1

    .line 2066
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    .line 2067
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2068
    iget-boolean v1, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2069
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2074
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_1
    :goto_0
    return-void
.end method

.method dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .line 2012
    invoke-virtual {p0}, Landroidx/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2013
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    .line 2014
    invoke-virtual {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2015
    .local v0, "state":Landroid/os/Parcelable;
    iget-boolean v1, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    if-eqz v1, :cond_0

    .line 2019
    if-eqz v0, :cond_1

    .line 2020
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 2016
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2023
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_1
    :goto_0
    return-void
.end method

.method protected findPreferenceInHierarchy(Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/preference/Preference;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1422
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 1423
    const/4 v0, 0x0

    return-object v0

    .line 1426
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1214
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDependency()Ljava/lang/String;
    .locals 1

    .line 1543
    iget-object v0, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 422
    iget-object v0, p0, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 423
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    .line 425
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .locals 5

    .line 1975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1976
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1977
    .local v1, "title":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x20

    if-nez v2, :cond_0

    .line 1978
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1980
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1981
    .local v2, "summary":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1982
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1984
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1986
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1988
    :cond_2
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .line 376
    iget-object v0, p0, Landroidx/preference/Preference;->mFragment:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 718
    iget-object v0, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/preference/Preference;->mIconResId:I

    if-eqz v0, :cond_0

    .line 719
    iget-object v1, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 721
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getId()J
    .locals 2

    .line 922
    iget-wide v0, p0, Landroidx/preference/Preference;->mId:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 358
    iget-object v0, p0, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 954
    iget-object v0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getLayoutResource()I
    .locals 1

    .line 462
    iget v0, p0, Landroidx/preference/Preference;->mLayoutResId:I

    return v0
.end method

.method public getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;
    .locals 1

    .line 1141
    iget-object v0, p0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    return-object v0
.end method

.method public getOnPreferenceClickListener()Landroidx/preference/Preference$OnPreferenceClickListener;
    .locals 1

    .line 1159
    iget-object v0, p0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .line 638
    iget v0, p0, Landroidx/preference/Preference;->mOrder:I

    return v0
.end method

.method public getParent()Landroidx/preference/PreferenceGroup;
    .locals 1

    .line 1554
    iget-object v0, p0, Landroidx/preference/Preference;->mParentGroup:Landroidx/preference/PreferenceGroup;

    return-object v0
.end method

.method protected getPersistedBoolean(Z)Z
    .locals 3
    .param p1, "defaultReturnValue"    # Z

    .line 1948
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1949
    return p1

    .line 1952
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    .line 1953
    .local v0, "dataStore":Landroidx/preference/PreferenceDataStore;
    if-eqz v0, :cond_1

    .line 1954
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/preference/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 1957
    :cond_1
    iget-object v1, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method protected getPersistedFloat(F)F
    .locals 3
    .param p1, "defaultReturnValue"    # F

    .line 1840
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1841
    return p1

    .line 1844
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    .line 1845
    .local v0, "dataStore":Landroidx/preference/PreferenceDataStore;
    if-eqz v0, :cond_1

    .line 1846
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/preference/PreferenceDataStore;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1

    .line 1849
    :cond_1
    iget-object v1, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method protected getPersistedInt(I)I
    .locals 3
    .param p1, "defaultReturnValue"    # I

    .line 1786
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1787
    return p1

    .line 1790
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    .line 1791
    .local v0, "dataStore":Landroidx/preference/PreferenceDataStore;
    if-eqz v0, :cond_1

    .line 1792
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/preference/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 1795
    :cond_1
    iget-object v1, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method protected getPersistedLong(J)J
    .locals 3
    .param p1, "defaultReturnValue"    # J

    .line 1894
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1895
    return-wide p1

    .line 1898
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    .line 1899
    .local v0, "dataStore":Landroidx/preference/PreferenceDataStore;
    if-eqz v0, :cond_1

    .line 1900
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroidx/preference/PreferenceDataStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1

    .line 1903
    :cond_1
    iget-object v1, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "defaultReturnValue"    # Ljava/lang/String;

    .line 1679
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1680
    return-object p1

    .line 1683
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    .line 1684
    .local v0, "dataStore":Landroidx/preference/PreferenceDataStore;
    if-eqz v0, :cond_1

    .line 1685
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/preference/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1688
    :cond_1
    iget-object v1, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1732
    .local p1, "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1733
    return-object p1

    .line 1736
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    .line 1737
    .local v0, "dataStore":Landroidx/preference/PreferenceDataStore;
    if-eqz v0, :cond_1

    .line 1738
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/preference/PreferenceDataStore;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 1741
    :cond_1
    iget-object v1, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;
    .locals 1

    .line 408
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceDataStore:Landroidx/preference/PreferenceDataStore;

    if-eqz v0, :cond_0

    .line 409
    return-object v0

    .line 410
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-eqz v0, :cond_1

    .line 411
    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    return-object v0

    .line 414
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreferenceManager()Landroidx/preference/PreferenceManager;
    .locals 1

    .line 1297
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 1230
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1234
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    .line 1231
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShouldDisableView()Z
    .locals 1

    .line 844
    iget-boolean v0, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 734
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummaryProvider()Landroidx/preference/Preference$SummaryProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 735
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummaryProvider()Landroidx/preference/Preference$SummaryProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/preference/Preference$SummaryProvider;->provideSummary(Landroidx/preference/Preference;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 737
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getSummaryProvider()Landroidx/preference/Preference$SummaryProvider;
    .locals 1

    .line 1109
    iget-object v0, p0, Landroidx/preference/Preference;->mSummaryProvider:Landroidx/preference/Preference$SummaryProvider;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 682
    iget-object v0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getWidgetLayoutResource()I
    .locals 1

    .line 486
    iget v0, p0, Landroidx/preference/Preference;->mWidgetLayoutResId:I

    return v0
.end method

.method public hasKey()Z
    .locals 1

    .line 977
    iget-object v0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isCopyingEnabled()Z
    .locals 1

    .line 1083
    iget-boolean v0, p0, Landroidx/preference/Preference;->mCopyingEnabled:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 796
    iget-boolean v0, p0, Landroidx/preference/Preference;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/Preference;->mDependencyMet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/Preference;->mParentDependencyMet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIconSpaceReserved()Z
    .locals 1

    .line 1060
    iget-boolean v0, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    return v0
.end method

.method public isPersistent()Z
    .locals 1

    .line 988
    iget-boolean v0, p0, Landroidx/preference/Preference;->mPersistent:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .line 817
    iget-boolean v0, p0, Landroidx/preference/Preference;->mSelectable:Z

    return v0
.end method

.method public final isShown()Z
    .locals 2

    .line 892
    invoke-virtual {p0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 893
    return v1

    .line 896
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 898
    return v1

    .line 901
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-ne p0, v0, :cond_2

    .line 903
    const/4 v0, 0x1

    return v0

    .line 906
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    .line 907
    .local v0, "parent":Landroidx/preference/PreferenceGroup;
    if-nez v0, :cond_3

    .line 909
    return v1

    .line 912
    :cond_3
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->isShown()Z

    move-result v1

    return v1
.end method

.method public isSingleLineTitle()Z
    .locals 1

    .line 1034
    iget-boolean v0, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .line 880
    iget-boolean v0, p0, Landroidx/preference/Preference;->mVisible:Z

    return v0
.end method

.method protected notifyChanged()V
    .locals 1

    .line 1276
    iget-object v0, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1277
    invoke-interface {v0, p0}, Landroidx/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceChange(Landroidx/preference/Preference;)V

    .line 1279
    :cond_0
    return-void
.end method

.method public notifyDependencyChange(Z)V
    .locals 4
    .param p1, "disableDependents"    # Z

    .line 1466
    iget-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    .line 1468
    .local v0, "dependents":Ljava/util/List;, "Ljava/util/List<Landroidx/preference/Preference;>;"
    if-nez v0, :cond_0

    .line 1469
    return-void

    .line 1472
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1473
    .local v1, "dependentsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1474
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/Preference;

    invoke-virtual {v3, p0, p1}, Landroidx/preference/Preference;->onDependencyChanged(Landroidx/preference/Preference;Z)V

    .line 1473
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1476
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method protected notifyHierarchyChanged()V
    .locals 1

    .line 1286
    iget-object v0, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1287
    invoke-interface {v0, p0}, Landroidx/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceHierarchyChange(Landroidx/preference/Preference;)V

    .line 1289
    :cond_0
    return-void
.end method

.method public onAttached()V
    .locals 0

    .line 1359
    invoke-direct {p0}, Landroidx/preference/Preference;->registerDependency()V

    .line 1360
    return-void
.end method

.method protected onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .locals 2
    .param p1, "preferenceManager"    # Landroidx/preference/PreferenceManager;

    .line 1307
    iput-object p1, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 1309
    iget-boolean v0, p0, Landroidx/preference/Preference;->mHasId:Z

    if-nez v0, :cond_0

    .line 1310
    invoke-virtual {p1}, Landroidx/preference/PreferenceManager;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/preference/Preference;->mId:J

    .line 1313
    :cond_0
    invoke-direct {p0}, Landroidx/preference/Preference;->dispatchSetInitialValue()V

    .line 1314
    return-void
.end method

.method protected onAttachedToHierarchy(Landroidx/preference/PreferenceManager;J)V
    .locals 2
    .param p1, "preferenceManager"    # Landroidx/preference/PreferenceManager;
    .param p2, "id"    # J

    .line 1325
    iput-wide p2, p0, Landroidx/preference/Preference;->mId:J

    .line 1326
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/Preference;->mHasId:Z

    .line 1328
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1330
    iput-boolean v0, p0, Landroidx/preference/Preference;->mHasId:Z

    .line 1331
    nop

    .line 1332
    return-void

    .line 1330
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Landroidx/preference/Preference;->mHasId:Z

    .line 1331
    throw v1
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 10
    .param p1, "holder"    # Landroidx/preference/PreferenceViewHolder;

    .line 502
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    .line 503
    .local v0, "itemView":Landroid/view/View;
    const/4 v1, 0x0

    .line 505
    .local v1, "summaryTextColor":Ljava/lang/Integer;
    iget-object v2, p0, Landroidx/preference/Preference;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    iget v2, p0, Landroidx/preference/Preference;->mViewId:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 508
    const v2, 0x1020010

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 509
    .local v2, "summaryView":Landroid/widget/TextView;
    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_1

    .line 510
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    .line 511
    .local v5, "summary":Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 512
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 514
    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 516
    :cond_0
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 520
    .end local v5    # "summary":Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    const v5, 0x1020016

    invoke-virtual {p1, v5}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 521
    .local v5, "titleView":Landroid/widget/TextView;
    if-eqz v5, :cond_4

    .line 522
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    .line 523
    .local v6, "title":Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 524
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 526
    iget-boolean v7, p0, Landroidx/preference/Preference;->mHasSingleLineTitleAttr:Z

    if-eqz v7, :cond_2

    .line 527
    iget-boolean v7, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 531
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v1, :cond_4

    .line 532
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 535
    :cond_3
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 539
    .end local v6    # "title":Ljava/lang/CharSequence;
    :cond_4
    :goto_1
    const v6, 0x1020006

    invoke-virtual {p1, v6}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 540
    .local v6, "imageView":Landroid/widget/ImageView;
    const/4 v7, 0x4

    if-eqz v6, :cond_a

    .line 541
    iget v8, p0, Landroidx/preference/Preference;->mIconResId:I

    if-nez v8, :cond_5

    iget-object v9, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_7

    .line 542
    :cond_5
    iget-object v9, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v9, :cond_6

    .line 543
    iget-object v9, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-static {v9, v8}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 545
    :cond_6
    iget-object v8, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_7

    .line 546
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 549
    :cond_7
    iget-object v8, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_8

    .line 550
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 552
    :cond_8
    iget-boolean v8, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    if-eqz v8, :cond_9

    move v8, v7

    goto :goto_2

    :cond_9
    move v8, v4

    :goto_2
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 556
    :cond_a
    :goto_3
    sget v8, Landroidx/preference/R$id;->icon_frame:I

    invoke-virtual {p1, v8}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 557
    .local v8, "imageFrame":Landroid/view/View;
    if-nez v8, :cond_b

    .line 558
    const v9, 0x102003e

    invoke-virtual {p1, v9}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 560
    :cond_b
    if-eqz v8, :cond_e

    .line 561
    iget-object v9, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_c

    .line 562
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 564
    :cond_c
    iget-boolean v3, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    if-eqz v3, :cond_d

    move v4, v7

    :cond_d
    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    .line 568
    :cond_e
    :goto_4
    iget-boolean v3, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    if-eqz v3, :cond_f

    .line 569
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v3

    invoke-direct {p0, v0, v3}, Landroidx/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    goto :goto_5

    .line 571
    :cond_f
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Landroidx/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 574
    :goto_5
    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v3

    .line 575
    .local v3, "selectable":Z
    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 576
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 578
    iget-boolean v4, p0, Landroidx/preference/Preference;->mAllowDividerAbove:Z

    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 579
    iget-boolean v4, p0, Landroidx/preference/Preference;->mAllowDividerBelow:Z

    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 581
    invoke-virtual {p0}, Landroidx/preference/Preference;->isCopyingEnabled()Z

    move-result v4

    .line 583
    .local v4, "copyingEnabled":Z
    if-eqz v4, :cond_10

    iget-object v7, p0, Landroidx/preference/Preference;->mOnCopyListener:Landroidx/preference/Preference$OnPreferenceCopyListener;

    if-nez v7, :cond_10

    .line 584
    new-instance v7, Landroidx/preference/Preference$OnPreferenceCopyListener;

    invoke-direct {v7, p0}, Landroidx/preference/Preference$OnPreferenceCopyListener;-><init>(Landroidx/preference/Preference;)V

    iput-object v7, p0, Landroidx/preference/Preference;->mOnCopyListener:Landroidx/preference/Preference$OnPreferenceCopyListener;

    .line 586
    :cond_10
    const/4 v7, 0x0

    if-eqz v4, :cond_11

    iget-object v9, p0, Landroidx/preference/Preference;->mOnCopyListener:Landroidx/preference/Preference$OnPreferenceCopyListener;

    goto :goto_6

    :cond_11
    move-object v9, v7

    :goto_6
    invoke-virtual {v0, v9}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 587
    invoke-virtual {v0, v4}, Landroid/view/View;->setLongClickable(Z)V

    .line 592
    if-eqz v4, :cond_12

    if-nez v3, :cond_12

    .line 593
    invoke-static {v0, v7}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 595
    :cond_12
    return-void
.end method

.method protected onClick()V
    .locals 0

    .line 931
    return-void
.end method

.method public onDependencyChanged(Landroidx/preference/Preference;Z)V
    .locals 1
    .param p1, "dependency"    # Landroidx/preference/Preference;
    .param p2, "disableDependent"    # Z

    .line 1485
    iget-boolean v0, p0, Landroidx/preference/Preference;->mDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1486
    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Landroidx/preference/Preference;->mDependencyMet:Z

    .line 1489
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    .line 1491
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 1493
    :cond_0
    return-void
.end method

.method public onDetached()V
    .locals 1

    .line 1368
    invoke-direct {p0}, Landroidx/preference/Preference;->unregisterDependency()V

    .line 1369
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/Preference;->mWasDetached:Z

    .line 1370
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 339
    const/4 v0, 0x0

    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0
    .param p1, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2103
    return-void
.end method

.method public onParentChanged(Landroidx/preference/Preference;Z)V
    .locals 1
    .param p1, "parent"    # Landroidx/preference/Preference;
    .param p2, "disableChild"    # Z

    .line 1502
    iget-boolean v0, p0, Landroidx/preference/Preference;->mParentDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1503
    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Landroidx/preference/Preference;->mParentDependencyMet:Z

    .line 1506
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    .line 1508
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 1510
    :cond_0
    return-void
.end method

.method protected onPrepareForRemoval()V
    .locals 0

    .line 1563
    invoke-direct {p0}, Landroidx/preference/Preference;->unregisterDependency()V

    .line 1564
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 2087
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    .line 2088
    sget-object v0, Landroidx/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2089
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong state class -- expecting Preference State"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2091
    :cond_1
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 2037
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    .line 2038
    sget-object v0, Landroidx/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .line 1630
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1616
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->onSetInitialValue(Ljava/lang/Object;)V

    .line 1617
    return-void
.end method

.method public peekExtras()Landroid/os/Bundle;
    .locals 1

    .line 433
    iget-object v0, p0, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public performClick()V
    .locals 3

    .line 1180
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1184
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->onClick()V

    .line 1186
    iget-object v0, p0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroidx/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroidx/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1187
    return-void

    .line 1190
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    .line 1191
    .local v0, "preferenceManager":Landroidx/preference/PreferenceManager;
    if-eqz v0, :cond_2

    .line 1192
    nop

    .line 1193
    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getOnPreferenceTreeClickListener()Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v1

    .line 1194
    .local v1, "listener":Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;
    if-eqz v1, :cond_2

    invoke-interface {v1, p0}, Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1195
    return-void

    .line 1199
    .end local v1    # "listener":Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;
    :cond_2
    iget-object v1, p0, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 1200
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1201
    .local v1, "context":Landroid/content/Context;
    iget-object v2, p0, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1203
    .end local v1    # "context":Landroid/content/Context;
    :cond_3
    return-void

    .line 1181
    .end local v0    # "preferenceManager":Landroidx/preference/PreferenceManager;
    :cond_4
    :goto_0
    return-void
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 1168
    invoke-virtual {p0}, Landroidx/preference/Preference;->performClick()V

    .line 1169
    return-void
.end method

.method protected persistBoolean(Z)Z
    .locals 4
    .param p1, "value"    # Z

    .line 1918
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1919
    const/4 v0, 0x0

    return v0

    .line 1922
    :cond_0
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedBoolean(Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 1924
    return v1

    .line 1927
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    .line 1928
    .local v0, "dataStore":Landroidx/preference/PreferenceDataStore;
    if-eqz v0, :cond_2

    .line 1929
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroidx/preference/PreferenceDataStore;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1931
    :cond_2
    iget-object v2, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v2}, Landroidx/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1932
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1933
    invoke-direct {p0, v2}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1935
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v1
.end method

.method protected persistFloat(F)Z
    .locals 4
    .param p1, "value"    # F

    .line 1810
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1811
    const/4 v0, 0x0

    return v0

    .line 1814
    :cond_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedFloat(F)F

    move-result v0

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1816
    return v1

    .line 1819
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    .line 1820
    .local v0, "dataStore":Landroidx/preference/PreferenceDataStore;
    if-eqz v0, :cond_2

    .line 1821
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroidx/preference/PreferenceDataStore;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 1823
    :cond_2
    iget-object v2, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v2}, Landroidx/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1824
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1825
    invoke-direct {p0, v2}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1827
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v1
.end method

.method protected persistInt(I)Z
    .locals 4
    .param p1, "value"    # I

    .line 1756
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1757
    const/4 v0, 0x0

    return v0

    .line 1760
    :cond_0
    not-int v0, p1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 1762
    return v1

    .line 1765
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    .line 1766
    .local v0, "dataStore":Landroidx/preference/PreferenceDataStore;
    if-eqz v0, :cond_2

    .line 1767
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroidx/preference/PreferenceDataStore;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1769
    :cond_2
    iget-object v2, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v2}, Landroidx/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1770
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1771
    invoke-direct {p0, v2}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1773
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v1
.end method

.method protected persistLong(J)Z
    .locals 4
    .param p1, "value"    # J

    .line 1864
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1865
    const/4 v0, 0x0

    return v0

    .line 1868
    :cond_0
    not-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroidx/preference/Preference;->getPersistedLong(J)J

    move-result-wide v0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1870
    return v1

    .line 1873
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    .line 1874
    .local v0, "dataStore":Landroidx/preference/PreferenceDataStore;
    if-eqz v0, :cond_2

    .line 1875
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2, p1, p2}, Landroidx/preference/PreferenceDataStore;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 1877
    :cond_2
    iget-object v2, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v2}, Landroidx/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1878
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1879
    invoke-direct {p0, v2}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1881
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v1
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 1649
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1650
    const/4 v0, 0x0

    return v0

    .line 1654
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1656
    return v1

    .line 1659
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    .line 1660
    .local v0, "dataStore":Landroidx/preference/PreferenceDataStore;
    if-eqz v0, :cond_2

    .line 1661
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroidx/preference/PreferenceDataStore;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1663
    :cond_2
    iget-object v2, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v2}, Landroidx/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1664
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1665
    invoke-direct {p0, v2}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1667
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v1
.end method

.method public persistStringSet(Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1702
    .local p1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1703
    const/4 v0, 0x0

    return v0

    .line 1707
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1709
    return v1

    .line 1712
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    .line 1713
    .local v0, "dataStore":Landroidx/preference/PreferenceDataStore;
    if-eqz v0, :cond_2

    .line 1714
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroidx/preference/PreferenceDataStore;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    .line 1716
    :cond_2
    iget-object v2, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v2}, Landroidx/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1717
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1718
    invoke-direct {p0, v2}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1720
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v1
.end method

.method requireKey()V
    .locals 2

    .line 964
    iget-object v0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 968
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/Preference;->mRequiresKey:Z

    .line 969
    return-void

    .line 965
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preference does not have a key assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "container"    # Landroid/os/Bundle;

    .line 2049
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2050
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "container"    # Landroid/os/Bundle;

    .line 1999
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 2000
    return-void
.end method

.method public setCopyingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1070
    iget-boolean v0, p0, Landroidx/preference/Preference;->mCopyingEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1071
    iput-boolean p1, p0, Landroidx/preference/Preference;->mCopyingEnabled:Z

    .line 1072
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 1074
    :cond_0
    return-void
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .line 1573
    iput-object p1, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    .line 1574
    return-void
.end method

.method public setDependency(Ljava/lang/String;)V
    .locals 0
    .param p1, "dependencyKey"    # Ljava/lang/String;

    .line 1529
    invoke-direct {p0}, Landroidx/preference/Preference;->unregisterDependency()V

    .line 1532
    iput-object p1, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 1533
    invoke-direct {p0}, Landroidx/preference/Preference;->registerDependency()V

    .line 1534
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 780
    iget-boolean v0, p0, Landroidx/preference/Preference;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 781
    iput-boolean p1, p0, Landroidx/preference/Preference;->mEnabled:Z

    .line 784
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    .line 786
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 788
    :cond_0
    return-void
.end method

.method public setFragment(Ljava/lang/String;)V
    .locals 0
    .param p1, "fragment"    # Ljava/lang/String;

    .line 367
    iput-object p1, p0, Landroidx/preference/Preference;->mFragment:Ljava/lang/String;

    .line 368
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "iconResId"    # I

    .line 707
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 708
    iput p1, p0, Landroidx/preference/Preference;->mIconResId:I

    .line 709
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 693
    iget-object v0, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 694
    iput-object p1, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 695
    const/4 v0, 0x0

    iput v0, p0, Landroidx/preference/Preference;->mIconResId:I

    .line 696
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 698
    :cond_0
    return-void
.end method

.method public setIconSpaceReserved(Z)V
    .locals 1
    .param p1, "iconSpaceReserved"    # Z

    .line 1046
    iget-boolean v0, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    if-eq v0, p1, :cond_0

    .line 1047
    iput-boolean p1, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    .line 1048
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 1050
    :cond_0
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 349
    iput-object p1, p0, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    .line 350
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 940
    iput-object p1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 942
    iget-boolean v0, p0, Landroidx/preference/Preference;->mRequiresKey:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->hasKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 943
    invoke-virtual {p0}, Landroidx/preference/Preference;->requireKey()V

    .line 945
    :cond_0
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 0
    .param p1, "layoutResId"    # I

    .line 453
    iput p1, p0, Landroidx/preference/Preference;->mLayoutResId:I

    .line 454
    return-void
.end method

.method final setOnPreferenceChangeInternalListener(Landroidx/preference/Preference$OnPreferenceChangeInternalListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

    .line 1269
    iput-object p1, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

    .line 1270
    return-void
.end method

.method public setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0
    .param p1, "onPreferenceChangeListener"    # Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 1131
    iput-object p1, p0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 1132
    return-void
.end method

.method public setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V
    .locals 0
    .param p1, "onPreferenceClickListener"    # Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 1150
    iput-object p1, p0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 1151
    return-void
.end method

.method public setOrder(I)V
    .locals 1
    .param p1, "order"    # I

    .line 623
    iget v0, p0, Landroidx/preference/Preference;->mOrder:I

    if-eq p1, v0, :cond_0

    .line 624
    iput p1, p0, Landroidx/preference/Preference;->mOrder:I

    .line 627
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyHierarchyChanged()V

    .line 629
    :cond_0
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0
    .param p1, "persistent"    # Z

    .line 1011
    iput-boolean p1, p0, Landroidx/preference/Preference;->mPersistent:Z

    .line 1012
    return-void
.end method

.method public setPreferenceDataStore(Landroidx/preference/PreferenceDataStore;)V
    .locals 0
    .param p1, "dataStore"    # Landroidx/preference/PreferenceDataStore;

    .line 391
    iput-object p1, p0, Landroidx/preference/Preference;->mPreferenceDataStore:Landroidx/preference/PreferenceDataStore;

    .line 392
    return-void
.end method

.method public setSelectable(Z)V
    .locals 1
    .param p1, "selectable"    # Z

    .line 805
    iget-boolean v0, p0, Landroidx/preference/Preference;->mSelectable:Z

    if-eq v0, p1, :cond_0

    .line 806
    iput-boolean p1, p0, Landroidx/preference/Preference;->mSelectable:Z

    .line 807
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 809
    :cond_0
    return-void
.end method

.method public setShouldDisableView(Z)V
    .locals 1
    .param p1, "shouldDisableView"    # Z

    .line 831
    iget-boolean v0, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    if-eq v0, p1, :cond_0

    .line 832
    iput-boolean p1, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    .line 833
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 835
    :cond_0
    return-void
.end method

.method public setSingleLineTitle(Z)V
    .locals 1
    .param p1, "singleLineTitle"    # Z

    .line 1022
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/Preference;->mHasSingleLineTitleAttr:Z

    .line 1023
    iput-boolean p1, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    .line 1024
    return-void
.end method

.method public setSummary(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    .line 771
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 772
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .line 751
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummaryProvider()Landroidx/preference/Preference$SummaryProvider;

    move-result-object v0

    if-nez v0, :cond_1

    .line 754
    iget-object v0, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 755
    iput-object p1, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 756
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 758
    :cond_0
    return-void

    .line 752
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preference already has a SummaryProvider set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setSummaryProvider(Landroidx/preference/Preference$SummaryProvider;)V
    .locals 0
    .param p1, "summaryProvider"    # Landroidx/preference/Preference$SummaryProvider;

    .line 1095
    iput-object p1, p0, Landroidx/preference/Preference;->mSummaryProvider:Landroidx/preference/Preference$SummaryProvider;

    .line 1096
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 1097
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleResId"    # I

    .line 672
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 673
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 659
    iget-object v0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 660
    iput-object p1, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 661
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 663
    :cond_0
    return-void
.end method

.method public setViewId(I)V
    .locals 0
    .param p1, "viewId"    # I

    .line 648
    iput p1, p0, Landroidx/preference/Preference;->mViewId:I

    .line 649
    return-void
.end method

.method public final setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 861
    iget-boolean v0, p0, Landroidx/preference/Preference;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 862
    iput-boolean p1, p0, Landroidx/preference/Preference;->mVisible:Z

    .line 863
    iget-object v0, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 864
    invoke-interface {v0, p0}, Landroidx/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceVisibilityChange(Landroidx/preference/Preference;)V

    .line 867
    :cond_0
    return-void
.end method

.method public setWidgetLayoutResource(I)V
    .locals 0
    .param p1, "widgetLayoutResId"    # I

    .line 477
    iput p1, p0, Landroidx/preference/Preference;->mWidgetLayoutResId:I

    .line 478
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .line 1518
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected shouldPersist()Z
    .locals 1

    .line 1000
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1962
    invoke-virtual {p0}, Landroidx/preference/Preference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final wasDetached()Z
    .locals 1

    .line 1377
    iget-boolean v0, p0, Landroidx/preference/Preference;->mWasDetached:Z

    return v0
.end method
