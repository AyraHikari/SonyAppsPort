.class public Landroidx/slice/compat/CompatPinnedList;
.super Ljava/lang/Object;
.source "CompatPinnedList.java"


# static fields
.field private static final BOOT_THRESHOLD:J = 0x7d0L

.field private static final LAST_BOOT:Ljava/lang/String; = "last_boot"

.field private static final PIN_PREFIX:Ljava/lang/String; = "pinned_"

.field private static final SPEC_NAME_PREFIX:Ljava/lang/String; = "spec_names_"

.field private static final SPEC_REV_PREFIX:Ljava/lang/String; = "spec_revs_"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPrefsName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefsName"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Landroidx/slice/compat/CompatPinnedList;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Landroidx/slice/compat/CompatPinnedList;->mPrefsName:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private static findSpec(Ljava/util/Set;Ljava/lang/String;)Landroidx/slice/SliceSpec;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/slice/SliceSpec;"
        }
    .end annotation

    .line 191
    .local p0, "specs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceSpec;

    .line 192
    .local v1, "spec":Landroidx/slice/SliceSpec;
    invoke-virtual {v1}, Landroidx/slice/SliceSpec;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    return-object v1

    .line 195
    .end local v1    # "spec":Landroidx/slice/SliceSpec;
    :cond_0
    goto :goto_0

    .line 196
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getPins(Landroid/net/Uri;)Ljava/util/Set;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Landroidx/slice/compat/CompatPinnedList;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pinned_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroidx/collection/ArraySet;

    invoke-direct {v2}, Landroidx/collection/ArraySet;-><init>()V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private getPrefs()Landroid/content/SharedPreferences;
    .locals 10

    .line 65
    iget-object v0, p0, Landroidx/slice/compat/CompatPinnedList;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/slice/compat/CompatPinnedList;->mPrefsName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 66
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "last_boot"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 67
    .local v2, "lastBootTime":J
    invoke-virtual {p0}, Landroidx/slice/compat/CompatPinnedList;->getBootTime()J

    move-result-wide v4

    .line 68
    .local v4, "currentBootTime":J
    sub-long v6, v2, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x7d0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 69
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 70
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 71
    invoke-interface {v6, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 72
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 74
    :cond_0
    return-object v0
.end method

.method private static mergeSpecs(Landroidx/collection/ArraySet;Ljava/util/Set;)Landroidx/collection/ArraySet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet<",
            "Landroidx/slice/SliceSpec;",
            ">;",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;)",
            "Landroidx/collection/ArraySet<",
            "Landroidx/slice/SliceSpec;",
            ">;"
        }
    .end annotation

    .line 177
    .local p0, "specs":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/slice/SliceSpec;>;"
    .local p1, "supportedSpecs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 178
    invoke-virtual {p0, v0}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceSpec;

    .line 179
    .local v1, "s":Landroidx/slice/SliceSpec;
    invoke-virtual {v1}, Landroidx/slice/SliceSpec;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroidx/slice/compat/CompatPinnedList;->findSpec(Ljava/util/Set;Ljava/lang/String;)Landroidx/slice/SliceSpec;

    move-result-object v2

    .line 180
    .local v2, "other":Landroidx/slice/SliceSpec;
    if-nez v2, :cond_0

    .line 181
    add-int/lit8 v3, v0, -0x1

    .end local v0    # "i":I
    .local v3, "i":I
    invoke-virtual {p0, v0}, Landroidx/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    move v0, v3

    goto :goto_1

    .line 182
    .end local v3    # "i":I
    .restart local v0    # "i":I
    :cond_0
    invoke-virtual {v2}, Landroidx/slice/SliceSpec;->getRevision()I

    move-result v3

    invoke-virtual {v1}, Landroidx/slice/SliceSpec;->getRevision()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 183
    add-int/lit8 v3, v0, -0x1

    .end local v0    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {p0, v0}, Landroidx/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 184
    invoke-virtual {p0, v2}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    move v0, v3

    .line 177
    .end local v1    # "s":Landroidx/slice/SliceSpec;
    .end local v2    # "other":Landroidx/slice/SliceSpec;
    .end local v3    # "i":I
    .restart local v0    # "i":I
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    .end local v0    # "i":I
    :cond_2
    return-object p0
.end method

.method private setPins(Landroid/net/Uri;Ljava/util/Set;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 120
    .local p2, "pins":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroidx/slice/compat/CompatPinnedList;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pinned_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 121
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 122
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 123
    return-void
.end method

.method private setSpecs(Landroid/net/Uri;Landroidx/collection/ArraySet;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroidx/collection/ArraySet<",
            "Landroidx/slice/SliceSpec;",
            ">;)V"
        }
    .end annotation

    .line 126
    .local p2, "specs":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/slice/SliceSpec;>;"
    invoke-virtual {p2}, Landroidx/collection/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 127
    .local v0, "specNames":[Ljava/lang/String;
    invoke-virtual {p2}, Landroidx/collection/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 128
    .local v1, "specRevs":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Landroidx/collection/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 129
    invoke-virtual {p2, v2}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/SliceSpec;

    invoke-virtual {v3}, Landroidx/slice/SliceSpec;->getType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 130
    invoke-virtual {p2, v2}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/SliceSpec;

    invoke-virtual {v3}, Landroidx/slice/SliceSpec;->getRevision()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0}, Landroidx/slice/compat/CompatPinnedList;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "spec_names_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 133
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "spec_revs_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 134
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 135
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 136
    return-void
.end method


# virtual methods
.method public declared-synchronized addPin(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Set;)Z
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;)Z"
        }
    .end annotation

    .local p3, "specs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    monitor-enter p0

    .line 148
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/slice/compat/CompatPinnedList;->getPins(Landroid/net/Uri;)Ljava/util/Set;

    move-result-object v0

    .line 149
    .local v0, "pins":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    .line 150
    .local v1, "wasNotPinned":Z
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-direct {p0, p1, v0}, Landroidx/slice/compat/CompatPinnedList;->setPins(Landroid/net/Uri;Ljava/util/Set;)V

    .line 152
    if-eqz v1, :cond_0

    .line 153
    new-instance v2, Landroidx/collection/ArraySet;

    invoke-direct {v2, p3}, Landroidx/collection/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v2}, Landroidx/slice/compat/CompatPinnedList;->setSpecs(Landroid/net/Uri;Landroidx/collection/ArraySet;)V

    goto :goto_0

    .line 155
    .end local p0    # "this":Landroidx/slice/compat/CompatPinnedList;
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/slice/compat/CompatPinnedList;->getSpecs(Landroid/net/Uri;)Landroidx/collection/ArraySet;

    move-result-object v2

    invoke-static {v2, p3}, Landroidx/slice/compat/CompatPinnedList;->mergeSpecs(Landroidx/collection/ArraySet;Ljava/util/Set;)Landroidx/collection/ArraySet;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Landroidx/slice/compat/CompatPinnedList;->setSpecs(Landroid/net/Uri;Landroidx/collection/ArraySet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :goto_0
    monitor-exit p0

    return v1

    .line 147
    .end local v0    # "pins":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "wasNotPinned":Z
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "pkg":Ljava/lang/String;
    .end local p3    # "specs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected getBootTime()J
    .locals 4

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getPinnedSlices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v0, "pinned":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-direct {p0}, Landroidx/slice/compat/CompatPinnedList;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 83
    .local v2, "key":Ljava/lang/String;
    const-string v3, "pinned_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 85
    .local v3, "uri":Landroid/net/Uri;
    invoke-direct {p0, v3}, Landroidx/slice/compat/CompatPinnedList;->getPins(Landroid/net/Uri;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 86
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_0
    goto :goto_0

    .line 90
    :cond_1
    return-object v0
.end method

.method public declared-synchronized getSpecs(Landroid/net/Uri;)Landroidx/collection/ArraySet;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Landroidx/collection/ArraySet<",
            "Landroidx/slice/SliceSpec;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 101
    :try_start_0
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    .line 102
    .local v0, "specs":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/slice/SliceSpec;>;"
    invoke-direct {p0}, Landroidx/slice/compat/CompatPinnedList;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 103
    .local v1, "prefs":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "spec_names_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "specNamesStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "spec_revs_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "specRevsStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 108
    :cond_0
    const-string v4, ","

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, "specNames":[Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 110
    .local v5, "specRevs":[Ljava/lang/String;
    array-length v6, v4

    array-length v7, v5

    if-eq v6, v7, :cond_1

    .line 111
    new-instance v6, Landroidx/collection/ArraySet;

    invoke-direct {v6}, Landroidx/collection/ArraySet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v6

    .line 113
    .end local p0    # "this":Landroidx/slice/compat/CompatPinnedList;
    :cond_1
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    :try_start_1
    array-length v7, v4

    if-ge v6, v7, :cond_2

    .line 114
    new-instance v7, Landroidx/slice/SliceSpec;

    aget-object v8, v4, v6

    aget-object v9, v5, v6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroidx/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v7}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 116
    .end local v6    # "i":I
    :cond_2
    monitor-exit p0

    return-object v0

    .line 106
    .end local v4    # "specNames":[Ljava/lang/String;
    .end local v5    # "specRevs":[Ljava/lang/String;
    :cond_3
    :goto_1
    :try_start_2
    new-instance v4, Landroidx/collection/ArraySet;

    invoke-direct {v4}, Landroidx/collection/ArraySet;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v4

    .line 100
    .end local v0    # "specs":Landroidx/collection/ArraySet;, "Landroidx/collection/ArraySet<Landroidx/slice/SliceSpec;>;"
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    .end local v2    # "specNamesStr":Ljava/lang/String;
    .end local v3    # "specRevsStr":Ljava/lang/String;
    .end local p1    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removePin(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pkg"    # Ljava/lang/String;

    monitor-enter p0

    .line 165
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/slice/compat/CompatPinnedList;->getPins(Landroid/net/Uri;)Ljava/util/Set;

    move-result-object v0

    .line 166
    .local v0, "pins":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 170
    invoke-direct {p0, p1, v0}, Landroidx/slice/compat/CompatPinnedList;->setPins(Landroid/net/Uri;Ljava/util/Set;)V

    .line 171
    new-instance v1, Landroidx/collection/ArraySet;

    invoke-direct {v1}, Landroidx/collection/ArraySet;-><init>()V

    invoke-direct {p0, p1, v1}, Landroidx/slice/compat/CompatPinnedList;->setSpecs(Landroid/net/Uri;Landroidx/collection/ArraySet;)V

    .line 172
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    monitor-exit p0

    return v2

    .line 167
    .end local p0    # "this":Landroidx/slice/compat/CompatPinnedList;
    :cond_2
    :goto_0
    monitor-exit p0

    return v2

    .line 164
    .end local v0    # "pins":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "pkg":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
