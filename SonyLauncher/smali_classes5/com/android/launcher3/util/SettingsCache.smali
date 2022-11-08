.class public Lcom/android/launcher3/util/SettingsCache;
.super Landroid/database/ContentObserver;
.source "SettingsCache.java"

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/SettingsCache$OnChangeListener;
    }
.end annotation


# static fields
.field public static INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/util/SettingsCache;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOTIFICATION_BADGING_URI:Landroid/net/Uri;

.field public static final ONE_HANDED_ENABLED:Ljava/lang/String; = "one_handed_mode_enabled"

.field public static final ONE_HANDED_SWIPE_BOTTOM_TO_NOTIFICATION_ENABLED:Ljava/lang/String; = "swipe_bottom_to_notification_enabled"

.field public static final ROTATION_SETTING_URI:Landroid/net/Uri;

.field private static final SYSTEM_URI_PREFIX:Ljava/lang/String;


# instance fields
.field private mKeyCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/launcher3/util/SettingsCache$OnChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public static synthetic $r8$lambda$Glvcvksn3jYYaZN0jclBLZlpzro(Landroid/content/Context;)Lcom/android/launcher3/util/SettingsCache;
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/SettingsCache;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/SettingsCache;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 53
    nop

    .line 54
    const-string v0, "notification_badging"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/util/SettingsCache;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    .line 60
    nop

    .line 61
    const-string v0, "accelerometer_rotation"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/util/SettingsCache;->ROTATION_SETTING_URI:Landroid/net/Uri;

    .line 63
    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/util/SettingsCache;->SYSTEM_URI_PREFIX:Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/launcher3/util/SettingsCache$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/launcher3/util/SettingsCache$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/SettingsCache;->mKeyCache:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/SettingsCache;->mListenerMap:Ljava/util/Map;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/SettingsCache;->mResolver:Landroid/content/ContentResolver;

    .line 81
    return-void
.end method

.method private updateValue(Landroid/net/Uri;I)Z
    .locals 4
    .param p1, "keyUri"    # Landroid/net/Uri;
    .param p2, "defaultValue"    # I

    .line 138
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/util/SettingsCache;->SYSTEM_URI_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/android/launcher3/util/SettingsCache;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v0, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    move v2, v3

    :cond_0
    move v1, v2

    .local v1, "newVal":Z
    goto :goto_0

    .line 143
    .end local v1    # "newVal":Z
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/util/SettingsCache;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v0, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_2

    move v2, v3

    :cond_2
    move v1, v2

    .line 146
    .restart local v1    # "newVal":Z
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/util/SettingsCache;->mKeyCache:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    return v1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/launcher3/util/SettingsCache;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 86
    return-void
.end method

.method public getValue(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "keySetting"    # Landroid/net/Uri;

    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;I)Z

    move-result v0

    return v0
.end method

.method public getValue(Landroid/net/Uri;I)Z
    .locals 1
    .param p1, "keySetting"    # Landroid/net/Uri;
    .param p2, "defaultValue"    # I

    .line 115
    iget-object v0, p0, Lcom/android/launcher3/util/SettingsCache;->mKeyCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/util/SettingsCache;->mKeyCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 118
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/SettingsCache;->updateValue(Landroid/net/Uri;I)Z

    move-result v0

    return v0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 92
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/android/launcher3/util/SettingsCache;->updateValue(Landroid/net/Uri;I)Z

    move-result v0

    .line 93
    .local v0, "newVal":Z
    iget-object v1, p0, Lcom/android/launcher3/util/SettingsCache;->mListenerMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/util/SettingsCache;->mListenerMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    .line 98
    .local v2, "listener":Lcom/android/launcher3/util/SettingsCache$OnChangeListener;
    invoke-interface {v2, v0}, Lcom/android/launcher3/util/SettingsCache$OnChangeListener;->onSettingsChanged(Z)V

    .line 99
    .end local v2    # "listener":Lcom/android/launcher3/util/SettingsCache$OnChangeListener;
    goto :goto_0

    .line 100
    :cond_1
    return-void
.end method

.method public register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "changeListener"    # Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    .line 127
    iget-object v0, p0, Lcom/android/launcher3/util/SettingsCache;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/launcher3/util/SettingsCache;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :cond_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 131
    .local v0, "l":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/android/launcher3/util/SettingsCache$OnChangeListener;>;"
    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v1, p0, Lcom/android/launcher3/util/SettingsCache;->mListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v1, p0, Lcom/android/launcher3/util/SettingsCache;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 135
    .end local v0    # "l":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/android/launcher3/util/SettingsCache$OnChangeListener;>;"
    :goto_0
    return-void
.end method

.method setKeyCache(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 173
    .local p1, "keyCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/net/Uri;Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/android/launcher3/util/SettingsCache;->mKeyCache:Ljava/util/Map;

    .line 174
    return-void
.end method

.method public unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "listener"    # Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    .line 156
    iget-object v0, p0, Lcom/android/launcher3/util/SettingsCache;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 157
    .local v0, "listenersToRemoveFrom":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/util/SettingsCache$OnChangeListener;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    return-void

    .line 161
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 162
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/android/launcher3/util/SettingsCache;->mListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_1
    return-void
.end method
