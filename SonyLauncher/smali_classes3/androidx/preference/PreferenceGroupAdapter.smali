.class public Landroidx/preference/PreferenceGroupAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeInternalListener;
.implements Landroidx/preference/PreferenceGroup$PreferencePositionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/preference/PreferenceViewHolder;",
        ">;",
        "Landroidx/preference/Preference$OnPreferenceChangeInternalListener;",
        "Landroidx/preference/PreferenceGroup$PreferencePositionCallback;"
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field private mPreferenceResourceDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncRunnable:Ljava/lang/Runnable;

.field private mVisiblePreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceGroup;)V
    .locals 2
    .param p1, "preferenceGroup"    # Landroidx/preference/PreferenceGroup;

    .line 89
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 81
    new-instance v0, Landroidx/preference/PreferenceGroupAdapter$1;

    invoke-direct {v0, p0}, Landroidx/preference/PreferenceGroupAdapter$1;-><init>(Landroidx/preference/PreferenceGroupAdapter;)V

    iput-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    .line 90
    iput-object p1, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    .line 94
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->setOnPreferenceChangeInternalListener(Landroidx/preference/Preference$OnPreferenceChangeInternalListener;)V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferences:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mVisiblePreferences:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceResourceDescriptors:Ljava/util/List;

    .line 100
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    instance-of v1, v0, Landroidx/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    .line 101
    check-cast v0, Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->shouldUseGeneratedIds()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroupAdapter;->setHasStableIds(Z)V

    goto :goto_0

    .line 103
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroupAdapter;->setHasStableIds(Z)V

    .line 107
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroupAdapter;->updatePreferences()V

    .line 108
    return-void
.end method

.method private createExpandButton(Landroidx/preference/PreferenceGroup;Ljava/util/List;)Landroidx/preference/ExpandButton;
    .locals 4
    .param p1, "group"    # Landroidx/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;)",
            "Landroidx/preference/ExpandButton;"
        }
    .end annotation

    .line 289
    .local p2, "collapsedPreferences":Ljava/util/List;, "Ljava/util/List<Landroidx/preference/Preference;>;"
    new-instance v0, Landroidx/preference/ExpandButton;

    .line 290
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 292
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getId()J

    move-result-wide v2

    invoke-direct {v0, v1, p2, v2, v3}, Landroidx/preference/ExpandButton;-><init>(Landroid/content/Context;Ljava/util/List;J)V

    .line 294
    .local v0, "preference":Landroidx/preference/ExpandButton;
    new-instance v1, Landroidx/preference/PreferenceGroupAdapter$3;

    invoke-direct {v1, p0, p1}, Landroidx/preference/PreferenceGroupAdapter$3;-><init>(Landroidx/preference/PreferenceGroupAdapter;Landroidx/preference/PreferenceGroup;)V

    invoke-virtual {v0, v1}, Landroidx/preference/ExpandButton;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 307
    return-object v0
.end method

.method private createVisiblePreferencesList(Landroidx/preference/PreferenceGroup;)Ljava/util/List;
    .locals 11
    .param p1, "group"    # Landroidx/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            ")",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "visiblePreferenceCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v1, "visiblePreferences":Ljava/util/List;, "Ljava/util/List<Landroidx/preference/Preference;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v2, "collapsedPreferences":Ljava/util/List;, "Ljava/util/List<Landroidx/preference/Preference;>;"
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    .line 221
    .local v3, "groupSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_a

    .line 222
    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v5

    .line 224
    .local v5, "preference":Landroidx/preference/Preference;
    invoke-virtual {v5}, Landroidx/preference/Preference;->isVisible()Z

    move-result v6

    if-nez v6, :cond_0

    .line 225
    goto/16 :goto_7

    .line 228
    :cond_0
    invoke-direct {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->isGroupExpandable(Landroidx/preference/PreferenceGroup;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 229
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getInitialExpandedChildrenCount()I

    move-result v6

    if-ge v0, v6, :cond_1

    goto :goto_1

    .line 232
    :cond_1
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 230
    :cond_2
    :goto_1
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    :goto_2
    instance-of v6, v5, Landroidx/preference/PreferenceGroup;

    if-nez v6, :cond_3

    .line 237
    add-int/lit8 v0, v0, 0x1

    .line 238
    goto :goto_7

    .line 241
    :cond_3
    move-object v6, v5

    check-cast v6, Landroidx/preference/PreferenceGroup;

    .line 242
    .local v6, "innerGroup":Landroidx/preference/PreferenceGroup;
    invoke-virtual {v6}, Landroidx/preference/PreferenceGroup;->isOnSameScreenAsChildren()Z

    move-result v7

    if-nez v7, :cond_4

    .line 243
    goto :goto_7

    .line 246
    :cond_4
    invoke-direct {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->isGroupExpandable(Landroidx/preference/PreferenceGroup;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-direct {p0, v6}, Landroidx/preference/PreferenceGroupAdapter;->isGroupExpandable(Landroidx/preference/PreferenceGroup;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_3

    .line 247
    :cond_5
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Nesting an expandable group inside of another expandable group is not supported!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 253
    :cond_6
    :goto_3
    invoke-direct {p0, v6}, Landroidx/preference/PreferenceGroupAdapter;->createVisiblePreferencesList(Landroidx/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object v7

    .line 255
    .local v7, "innerList":Ljava/util/List;, "Ljava/util/List<Landroidx/preference/Preference;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/preference/Preference;

    .line 256
    .local v9, "inner":Landroidx/preference/Preference;
    invoke-direct {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->isGroupExpandable(Landroidx/preference/PreferenceGroup;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 257
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getInitialExpandedChildrenCount()I

    move-result v10

    if-ge v0, v10, :cond_7

    goto :goto_5

    .line 260
    :cond_7
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 258
    :cond_8
    :goto_5
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    :goto_6
    nop

    .end local v9    # "inner":Landroidx/preference/Preference;
    add-int/lit8 v0, v0, 0x1

    .line 263
    goto :goto_4

    .line 221
    .end local v5    # "preference":Landroidx/preference/Preference;
    .end local v6    # "innerGroup":Landroidx/preference/PreferenceGroup;
    .end local v7    # "innerList":Ljava/util/List;, "Ljava/util/List<Landroidx/preference/Preference;>;"
    :cond_9
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 268
    .end local v4    # "i":I
    :cond_a
    invoke-direct {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->isGroupExpandable(Landroidx/preference/PreferenceGroup;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 269
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getInitialExpandedChildrenCount()I

    move-result v4

    if-le v0, v4, :cond_b

    .line 270
    invoke-direct {p0, p1, v2}, Landroidx/preference/PreferenceGroupAdapter;->createExpandButton(Landroidx/preference/PreferenceGroup;Ljava/util/List;)Landroidx/preference/ExpandButton;

    move-result-object v4

    .line 271
    .local v4, "expandButton":Landroidx/preference/ExpandButton;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    .end local v4    # "expandButton":Landroidx/preference/ExpandButton;
    :cond_b
    return-object v1
.end method

.method private flattenPreferenceGroup(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V
    .locals 6
    .param p2, "group"    # Landroidx/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;",
            "Landroidx/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .line 185
    .local p1, "preferences":Ljava/util/List;, "Ljava/util/List<Landroidx/preference/Preference;>;"
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->sortPreferences()V

    .line 186
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 187
    .local v0, "groupSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 188
    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 190
    .local v2, "preference":Landroidx/preference/Preference;
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v3, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;

    invoke-direct {v3, v2}, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;-><init>(Landroidx/preference/Preference;)V

    .line 194
    .local v3, "descriptor":Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;
    iget-object v4, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceResourceDescriptors:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 195
    iget-object v4, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceResourceDescriptors:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_0
    instance-of v4, v2, Landroidx/preference/PreferenceGroup;

    if-eqz v4, :cond_1

    .line 199
    move-object v4, v2

    check-cast v4, Landroidx/preference/PreferenceGroup;

    .line 200
    .local v4, "nestedGroup":Landroidx/preference/PreferenceGroup;
    invoke-virtual {v4}, Landroidx/preference/PreferenceGroup;->isOnSameScreenAsChildren()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 201
    invoke-direct {p0, p1, v4}, Landroidx/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V

    .line 205
    .end local v4    # "nestedGroup":Landroidx/preference/PreferenceGroup;
    :cond_1
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeInternalListener(Landroidx/preference/Preference$OnPreferenceChangeInternalListener;)V

    .line 187
    .end local v2    # "preference":Landroidx/preference/Preference;
    .end local v3    # "descriptor":Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private isGroupExpandable(Landroidx/preference/PreferenceGroup;)Z
    .locals 2
    .param p1, "preferenceGroup"    # Landroidx/preference/PreferenceGroup;

    .line 318
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getInitialExpandedChildrenCount()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getItem(I)Landroidx/preference/Preference;
    .locals 1
    .param p1, "position"    # I

    .line 329
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroupAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 330
    :cond_0
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mVisiblePreferences:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    return-object v0

    .line 329
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 335
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mVisiblePreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 340
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroupAdapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    const-wide/16 v0, -0x1

    return-wide v0

    .line 343
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/Preference;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .line 369
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object v0

    .line 371
    .local v0, "preference":Landroidx/preference/Preference;
    new-instance v1, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;

    invoke-direct {v1, v0}, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;-><init>(Landroidx/preference/Preference;)V

    .line 373
    .local v1, "descriptor":Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;
    iget-object v2, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceResourceDescriptors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 374
    .local v2, "viewType":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 375
    return v2

    .line 377
    :cond_0
    iget-object v3, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceResourceDescriptors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 378
    iget-object v3, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceResourceDescriptors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    return v2
.end method

.method public getPreferenceAdapterPosition(Landroidx/preference/Preference;)I
    .locals 4
    .param p1, "preference"    # Landroidx/preference/Preference;

    .line 437
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mVisiblePreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 438
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 439
    iget-object v2, p0, Landroidx/preference/PreferenceGroupAdapter;->mVisiblePreferences:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    .line 440
    .local v2, "candidate":Landroidx/preference/Preference;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 441
    return v1

    .line 438
    .end local v2    # "candidate":Landroidx/preference/Preference;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 444
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public getPreferenceAdapterPosition(Ljava/lang/String;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 425
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mVisiblePreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 426
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 427
    iget-object v2, p0, Landroidx/preference/PreferenceGroupAdapter;->mVisiblePreferences:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    .line 428
    .local v2, "candidate":Landroidx/preference/Preference;
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 429
    return v1

    .line 426
    .end local v2    # "candidate":Landroidx/preference/Preference;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 432
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Landroidx/preference/PreferenceViewHolder;
    .param p2, "position"    # I

    .line 418
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object v0

    .line 419
    .local v0, "preference":Landroidx/preference/Preference;
    invoke-virtual {p1}, Landroidx/preference/PreferenceViewHolder;->resetState()V

    .line 420
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 421
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 47
    check-cast p1, Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceGroupAdapter;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/preference/PreferenceViewHolder;
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 386
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceResourceDescriptors:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;

    .line 388
    .local v0, "descriptor":Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 389
    .local v1, "inflater":Landroid/view/LayoutInflater;
    nop

    .line 390
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroidx/preference/R$styleable;->BackgroundStyle:[I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 391
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v3, Landroidx/preference/R$styleable;->BackgroundStyle_android_selectableItemBackground:I

    .line 392
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 393
    .local v3, "background":Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_0

    .line 394
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1080062

    invoke-static {v4, v5}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 397
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 399
    iget v4, v0, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;->mLayoutResId:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 400
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_1

    .line 401
    invoke-static {v4, v3}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 404
    :cond_1
    const v5, 0x1020018

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 405
    .local v5, "widgetFrame":Landroid/view/ViewGroup;
    if-eqz v5, :cond_3

    .line 406
    iget v6, v0, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;->mWidgetLayoutResId:I

    if-eqz v6, :cond_2

    .line 407
    iget v6, v0, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;->mWidgetLayoutResId:I

    invoke-virtual {v1, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 409
    :cond_2
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 413
    :cond_3
    :goto_0
    new-instance v6, Landroidx/preference/PreferenceViewHolder;

    invoke-direct {v6, v4}, Landroidx/preference/PreferenceViewHolder;-><init>(Landroid/view/View;)V

    return-object v6
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceGroupAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/preference/PreferenceViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroidx/preference/Preference;

    .line 348
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mVisiblePreferences:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 350
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 352
    invoke-virtual {p0, v0, p1}, Landroidx/preference/PreferenceGroupAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 354
    :cond_0
    return-void
.end method

.method public onPreferenceHierarchyChange(Landroidx/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroidx/preference/Preference;

    .line 358
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 359
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 360
    return-void
.end method

.method public onPreferenceVisibilityChange(Landroidx/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroidx/preference/Preference;

    .line 364
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->onPreferenceHierarchyChange(Landroidx/preference/Preference;)V

    .line 365
    return-void
.end method

.method updatePreferences()V
    .locals 6

    .line 116
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 119
    .local v1, "preference":Landroidx/preference/Preference;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeInternalListener(Landroidx/preference/Preference$OnPreferenceChangeInternalListener;)V

    .line 120
    .end local v1    # "preference":Landroidx/preference/Preference;
    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 123
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferences:Ljava/util/List;

    .line 124
    iget-object v2, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2}, Landroidx/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V

    .line 126
    iget-object v1, p0, Landroidx/preference/PreferenceGroupAdapter;->mVisiblePreferences:Ljava/util/List;

    .line 130
    .local v1, "oldVisibleList":Ljava/util/List;, "Ljava/util/List<Landroidx/preference/Preference;>;"
    iget-object v2, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-direct {p0, v2}, Landroidx/preference/PreferenceGroupAdapter;->createVisiblePreferencesList(Landroidx/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object v2

    .line 133
    .local v2, "visiblePreferenceList":Ljava/util/List;, "Ljava/util/List<Landroidx/preference/Preference;>;"
    iput-object v2, p0, Landroidx/preference/PreferenceGroupAdapter;->mVisiblePreferences:Ljava/util/List;

    .line 135
    iget-object v3, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v3

    .line 136
    .local v3, "preferenceManager":Landroidx/preference/PreferenceManager;
    if-eqz v3, :cond_1

    .line 137
    invoke-virtual {v3}, Landroidx/preference/PreferenceManager;->getPreferenceComparisonCallback()Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 138
    nop

    .line 139
    invoke-virtual {v3}, Landroidx/preference/PreferenceManager;->getPreferenceComparisonCallback()Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;

    move-result-object v4

    .line 140
    .local v4, "comparisonCallback":Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;
    new-instance v5, Landroidx/preference/PreferenceGroupAdapter$2;

    invoke-direct {v5, p0, v1, v2, v4}, Landroidx/preference/PreferenceGroupAdapter$2;-><init>(Landroidx/preference/PreferenceGroupAdapter;Ljava/util/List;Ljava/util/List;Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;)V

    invoke-static {v5}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v5

    .line 166
    .local v5, "result":Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    invoke-virtual {v5, p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 167
    .end local v4    # "comparisonCallback":Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;
    .end local v5    # "result":Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    goto :goto_1

    .line 168
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroupAdapter;->notifyDataSetChanged()V

    .line 171
    :goto_1
    iget-object v4, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferences:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/preference/Preference;

    .line 172
    .local v5, "preference":Landroidx/preference/Preference;
    invoke-virtual {v5}, Landroidx/preference/Preference;->clearWasDetached()V

    .line 173
    .end local v5    # "preference":Landroidx/preference/Preference;
    goto :goto_2

    .line 174
    :cond_2
    return-void
.end method
